#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    int primeNumberCount = 100;
    if (argc == 2) {
        NSString *primeNumberCountString = [NSString stringWithFormat:@"%s", argv[1]];
        primeNumberCount = [primeNumberCountString intValue];
    }

    int number = 0;
    while (primeNumberCount > 0) {
        number++;

        int i;
        int j = 0;
        for (i = 1; i <= number; i++) {
            if (number % i == 0) {
                j++;
            }
        }

        if (j == 2) {
            primeNumberCount--;
        }
    }

    NSLog(@"The latest prime number: %d\n", number);

    [pool drain];

    return 0;
}
