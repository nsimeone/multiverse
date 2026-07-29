fn main() {
    let page_name: &str ="home"; 
    let mut retry_count: i32 = 5; 
    println!("{}", retry_count);
    retry_count = 2;
    println!("{}", retry_count);
    let is_automated: bool = true; 

    println!("{} {} {}", page_name, retry_count, is_automated); 

    let status_code: i32 = 900; 

    match status_code {
        200 => println!("Success"),
        404 => println!("Not found - retrying"),
        500 => println!("Server error - backing off"),
        700 => println!("Doesn't exist"),
        _ => println! ("Unexpected stats: {}", status_code),
    }

    let status_codes = [200, 404, 500, 301]; 

    for code in status_codes {
    match code {
        200 => println!("Success"),
        404 => println!("Not found - Retrying"),
        500 => println!("Server error - backing off"),
        700 => println!("Doesn't exist"),
        _ => println!("Unexpected status: {}", code),
    }
}
    let response_times = [0.5, 1.5, 3.1];

    for time in response_times {
        if time > 2.0 {
            println!("{} - slow", time);
        } else {
            println!("{} - fast", time);
        } 
    }
}
