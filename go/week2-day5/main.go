package main

import "fmt"

type Page struct {
	URL          string
	Status       int
	ResponseTime float64
}

type Product struct {
	Name    string
	Price   float64
	InStock bool
}

func main() {
	page1 := Page{URL: "site1.com", Status: 200, ResponseTime: 0.2}
	fmt.Println(page1.URL, page1.Status, page1.ResponseTime)

	pages := []Page{}

	pages = append(pages, Page{URL: "site1.com", Status: 200, ResponseTime: 0.2})
	pages = append(pages, Page{URL: "site2.com", Status: 404, ResponseTime: 1.5})

	for _, page := range pages {
		fmt.Println(page.URL, page.Status, page.ResponseTime)
	}

	products := []Product{}

	products = append(products, Product{Name: "Camel", Price: 8.00, InStock: true})
	products = append(products, Product{Name: "Marlboro", Price: 7.50, InStock: true})
	products = append(products, Product{Name: "Newports", Price: 9.00, InStock: false})

	for _, product := range products {
		fmt.Println(product.Name, product.Price, product.InStock)
		if product.Price > 50 {
			fmt.Println(product.Price)
		}
	}

	statusMap := make(map[string]int)

	statusMap["site1.com"] = 200
	statusMap["site2.com"] = 404
	statusMap["site1.com"] = 500

	for url, status := range statusMap {
		fmt.Println(url, status)
	}

	prices := make(map[string]float64)

	prices["Camel"] = 8.00
	prices["Marlboro"] = 7.50
	prices["Newport"] = 10.00

	for name, price := range prices {
		fmt.Println(name, price)
	}

}
