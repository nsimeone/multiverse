"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const page1 = { url: "site1.com", status: 200, responseTime: 0.2 };
console.log(page1.url, page1.status, page1.responseTime);
const visitedSites = new Set();
visitedSites.add("site1.com");
visitedSites.add("site1.com");
visitedSites.add("site2.com");
console.log(visitedSites);
console.log(visitedSites.has("site1.com"));
const pageStatus = new Map();
pageStatus.set("site1.com", 200);
pageStatus.set("site2.com", 404);
console.log(pageStatus.get("site1.com"));
pageStatus.set("site1.com", 500);
console.log(pageStatus);
const product1 = { name: "Hoka Mach 6", price: 149.99, inStock: true };
console.log(product1.name, product1.price, product1.inStock);
const checkedUrls = new Set();
checkedUrls.add("hoka.com");
checkedUrls.add("fleetfeet.com");
checkedUrls.add("runningwarehouse.com");
console.log(checkedUrls);
console.log(checkedUrls.has("hoka.com"));
const statusMap = new Map();
statusMap.set("sierra.com", 200);
statusMap.set("govx.com", 301);
statusMap.set("rei.com", 500);
console.log(statusMap.get("rei.com"));
statusMap.set("rei.com", 404);
console.log(statusMap);
statusMap.set("sierra.com", 500);
console.log(statusMap);
const products = [
    { name: "Hoka Mach 6", price: 149.99, inStock: true },
    { name: "Brooks Ghost", price: 139.99, inStock: false },
    { name: "Asics Gel-Kayano", price: 159.99, inStock: true }
];
products.forEach((products) => {
    console.log(products.name, products.price);
});
//# sourceMappingURL=week2-day2.js.map