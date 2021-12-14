use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();

    let mut prime_number_count: i64 = 100;
    if args.len() == 2 {
        prime_number_count = args[1].parse::<i64>().unwrap();
    }

    let mut number: i64 = 0;
    while prime_number_count > 0 {
        number += 1;
        let mut j: i64 = 0;

        for i in 1..number + 1 {
            if number % i == 0 {
                j += 1;
            }
        }

        if j == 2 {
            prime_number_count -= 1;
        }
    }

    println!("The latest prime number: {}", number);
}
