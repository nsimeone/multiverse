const std = @import("std");

const Page = struct {
    url: []const u8,
    status: i32, 
    response_time: f64,
};

const Product = struct {
    name: []const u8,
    price: f64, 
    in_stock: bool,
}; 

pub fn main() void {
    const page1 = Page{ .url ="site1.com", .status = 200, .response_time = 0.2};
    std.debug.print("{s} {} {}\n", .{ page1.url, page1.status, page1.response_time});

    const product1 = Product{ .name ="Hoka Mach 7", .price = 179.95, .in_stock = true};
    std.debug.print("{s} ${} {}\n", .{ product1.name, product1.price, product1.in_stock});


const pages = [_]Page{
    Page{ .url = "site1.com", .status = 200, .response_time = 0.2},
    Page{ .url = "site2.com", .status = 404, .response_time = 1.5},

};

const products = [_]Product{
    Product{ .name ="Hoke Mach 7", .price = 179.95, .in_stock = true},
    Product{ .name ="Hoke Mach 6", .price = 139.95, .in_stock = true},
    Product{ .name ="Hoke Mach 5", .price = 35.00, .in_stock = false},
    
};


for (pages) |page| {
    std.debug.print("{s} {} {}\n", .{page.url, page.status, page.response_time});
}

for (products) |product| {
    std.debug.print("{s} ${} {}\n", .{product.name, product.price, product.in_stock});
     if (product.price > 50.0) {
        std.debug.print("{s} is expensive\n", .{product.name});
}
}
}