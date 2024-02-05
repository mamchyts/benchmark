const std = @import("std");

pub fn main() !void {
    var primeNumberCount: i32 = 100;
    if (std.os.argv.len == 2) {
        var args = std.process.args();
        _ = args.skip();
        while (args.next()) |arg| {
            primeNumberCount = try std.fmt.parseInt(i32, arg, 10);
        }
    }

    var number: usize = 0;
    while (primeNumberCount > 0) {
        number += 1;

        var j: usize = 0;
        for (1..number + 1) |i| {
            if (number % i == 0) {
                j += 1;
            }
        }

        if (j == 2) {
            primeNumberCount -= 1;
        }
    }

    std.debug.print("The latest prime number: {d}\n", .{number});
}
