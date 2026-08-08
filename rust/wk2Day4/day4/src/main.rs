struct Page {
    url: String, 
    status: i32,
    response_time: f64, 
}

struct Product {
    name: String,
    price: f64,
    in_stock: bool
}

fn main() {
    let page1 = Page {
        url: String::from("site1.com"),
        status: 200,
        response_time: 0.2, 
    }; 

println!("{} {} {}", page1.url, page1.status, page1.response_time);

    let product1 = Product {
        name: String::from("Camel Cigarettes"),
        price: 8.00,
        in_stock: false,
    };
println!("{} {}$ {}", product1.name, product1.price, product1.in_stock);

let mut pages: Vec<Page> = Vec::new(); 

pages.push(Page {
    url: String::from("site1.com"),
    status: 200,
    response_time: 0.2, 
});

pages.push(Page {
    url: String::from("site2.com"),
    status: 404, 
    response_time: 1.5,
});

for page in &pages {
    println!("{} {} {}", page.url, page.status, page.response_time)
}

let mut products: Vec<Product> = Vec::new();
products.push(Product {
    name: String::from("Marlboro Cigarettes"),
    price: 7.50,
    in_stock: true,
});

products.push(Product {
    name: String::from("Newport Cigarettes"),
    price: 6.75,
    in_stock: true,
});

products.push(Product {
    name: String::from("American Spirit Cigarettes"),
    price: 9.50,
    in_stock: true,
});

for product in &products {
    println!("{} ${} {}", product.name, product.price, product.in_stock);
if product.price > 50.0 {
println!("${} {}", product.name, product.price)
}


use std::collections::HashMap;

let mut status_map: HashMap<String, i32> = HashMap::new(); 


status_map.insert(String::from("site1.com"), 200);
status_map.insert(String::from("site2.com"), 404);

for (url, status) in &status_map {
    println!("{}: {}", url, status);

}

let mut prices: HashMap<String, f64> = HashMap::new();

prices.insert(String::from("Camel Cigarettes"), 8.00);
prices.insert(String::from("Marlboro Cigarettes"), 8.00);

for (name, price) in &prices {
    println!("{}: ${}", name, price);
}
}}