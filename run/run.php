<?php

declare(strict_types=1);

$testTitles = ($argc === 1) ? [] : array_slice($argv, 1);

$tests = getTests($testTitles);
$commands = getCommands($tests);

foreach ($commands as $command) {
    echo '----------------------- ' . $command['test']['title'] . ' -----------------------' . PHP_EOL;
    echo executeCommand($command) . PHP_EOL . PHP_EOL . PHP_EOL;
}


function getTests(array $testTitles = [])
{
    $allTests = getAllTests();

    if (count($testTitles) === 0) {
        return $allTests;
    }

    $tests = [];
    foreach ($allTests as $test) {
        if (in_array($test['title'], $testTitles)) {
            $tests[] = $test;
        }
    }

    return $tests;
}


function getAllTests(): array
{
    $readmeFileContent = getReadmeFileContent();
    preg_match_all('/### \[(?<title>.*)\]\((?<file>.*)\)/iU', $readmeFileContent, $matches, PREG_SET_ORDER);

    $tests = [];
    foreach ($matches as $match) {
        $tests[] = [
            'title' => $match['title'],
            'fullTestName' => $match[0],
        ];
    }

    return $tests;
}


function getCommands(array $tests): array
{
    $readmeFileContent = getReadmeFileContent();

    $commands = [];
    foreach ($tests as $test) {
        preg_match('/' . preg_quote($test['fullTestName'], '/') . '\s*```(?<cmd>[^`]*)/im', $readmeFileContent, $matches);
        if (count($matches) === 0) {
            throw new Exception('Test not exist: ' . $test['fullTestName']);
        }

        $commands[] = [
            'test' => $test,
            'cmd' => $matches['cmd'],
        ];
    }

    return $commands;
}


function executeCommand(array $command): string
{
    $outTimes = [
        'real' => [],
        'user' => [],
        'sys' => [],
    ];

    // run test multiply time (out will show AVERAGE values)
    for ($i = 0; $i < 3; $i++) {
        [$outCmd, $outTime] = run(trim($command['cmd']));

        foreach (array_keys($outTimes) as $key) {
            preg_match('/' . $key . ' (?<time>.+)/i', $outTime, $matches);
            if (count($matches) === 0) {
                throw new Exception('Invalid real time output: ' . $outTime);
            }

            $outTimes[$key][] = (float) $matches['time'];
        }

        sleep(3);
    }

    $out = trim($outCmd) . PHP_EOL . PHP_EOL;

    // calculate average values
    $out .= 'real ' . round(array_sum($outTimes['real']) / count($outTimes['real']), 2) . PHP_EOL;
    $out .= 'user ' . round(array_sum($outTimes['user']) / count($outTimes['user']), 2) . PHP_EOL;
    $out .= 'sys ' . round(array_sum($outTimes['sys']) / count($outTimes['sys']), 2) . PHP_EOL;

    return $out;
}


function run(string $cmd): array
{
    $descriptorSpec = array(
        0 => array("pipe", "r"),  // stdin is a pipe that the child will read from
        1 => array("pipe", "w"),  // stdout is a pipe that the child will write to
        2 => array("pipe", "w"),  // stderr is a file to write to
    );

    $process = proc_open($cmd, $descriptorSpec, $pipes);
    if (is_resource($process)) {
        $outCmd = stream_get_contents($pipes[1]);
        $outTime = stream_get_contents($pipes[2]);
        fclose($pipes[0]);
        fclose($pipes[1]);
        fclose($pipes[2]);

        proc_close($process);
        return [$outCmd, $outTime];
    }

    throw new Exception('Can\'t run command: ' . $cmd);
}


function getReadmeFileContent(): string
{
    return file_get_contents(__DIR__ . '/../README.md');
}
