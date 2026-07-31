const std =@import("std");

pub fn main() void {
    const page_name: []const u8 = "home"; 
    var retry_count: i32 = 3;
    const is_automated: bool = true; 

    std.debug.print("{s} {} {}\n", .{ page_name, retry_count, is_automated });
    retry_count = 5; 

    std.debug.print("{s} {} {}\n", .{ page_name, retry_count, is_automated});

    const status_code: i32 = 404; 

    if (status_code == 200) {
        std.debug.print("Success\n", .{}); 
    } else if (status_code == 404) {
        std.debug.print("Not found - retrying\n", .{}); 
    } else if (status_code == 500) {
        std.debug.print("Server error - backing off\n", .{}); 
    } else {
        std.debug.print("Unexpected status: {}\n", .{status_code});
    }

    const status_codes = [_]i32{ 200, 404, 500, 301 };

    for (status_codes) |code| {
        if (code == 200) {
            std.debug.print("Success\n", .{});
        } else if (code == 404) {
            std.debug.print("Not found - retrying\n", .{});
        } else if (code == 500) {
            std.debug.print("Server error - backing off\n", .{});
        } else {
            std.debug.print("Unexpected Status: {}\n", .{code});
        }
    }

    const page_count: i32 = 0; 
    if (page_count > 0) {
        std.debug.print("Loaded\n", . {});
    } else {
        std.debug.print("Empty {}\n", .{page_count});
    }

    const http_status: i32 = 750; 
    if (http_status == 200) {
        std.debug.print("Success\n", .{});    
    } else if (http_status == 404) {
            std.debug.print("Not found - retrying\n", .{});
    } else if (http_status == 500) {
            std.debug.print("Server error - backing off\n", .{});  
    } else {
        std.debug.print("Unexpected Status: {}\n", .{http_status});   
        }

    const respone_times = [_]f64{ 0.2, 1.5, 3.1, 0.4, 5.0 };

    for (respone_times) |speed| {
        if (speed > 2) {
            std.debug.print("slow {}\n", .{speed});
        } else {
            std.debug.print("fast {}\n", .{speed});
        }
    } 

    const page = [_][]const u8{ "home", "about", "contact", "blog" }; 

    for (page) |pages| {
        if (std.mem.eql(u8, pages, "home")) {
            std.debug.print("home\n", .{});
        }else if (std.mem.eql(u8, pages, "about")) {
            std.debug.print("about\n", .{});
        }else if (std.mem.eql(u8, pages, "contact")) {
            std.debug.print("contact\n", .{});
        }else if (std.mem.eql(u8, pages, "blog")) {
            std.debug.print("blog\n", .{});
        }
    }

    var prng = std.Random.DefaultPrng.init(42); 
    const random = prng.random(); 

    var max_retries: i32 = 5; 
    max_retries = 7;
    var attempt: i32 = 0; 
    var success: bool = false; 

    while (attempt < max_retries and !success) {
        attempt += 1; 
        success = random.float(f64) < 0.5;
        if (success) {
            std.debug.print("Attempt {}: Success!\n", .{attempt}); 
        } else {
            std.debug.print("Attempt {}: Failed, retrying...\n", .{attempt}); 
    }
}
        if (!success) {
            std.debug.print("Gave up after {} attempts\n", .{attempt});
        }

const pages = [_][]const u8{ "home", "about", "contact", "blog" };
std.debug.print("{s}\n", .{pages[3]});

    }


