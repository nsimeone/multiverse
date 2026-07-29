"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
let pageName = "home";
let retryCount = 3;
let isAutomated = true;
console.log(pageName, retryCount, isAutomated);
let statusCode = 404;
if (statusCode === 200) {
    console.log("Successs");
}
else if (statusCode === 404) {
    console.log("Not found - retrying");
}
else if (statusCode >= 500) {
    console.log("Server error -backing off");
}
else {
    console.log(`Unexpected Status: ${statusCode}`);
}
console.log("5" === "5");
const urls = ["site1.com", "site2.com", "site3.com"];
urls.forEach((url) => {
    console.log(`Checking ${url}`);
});
const responseTimes = [0.2, 1.5, 3.1, 0.4, 5.0];
const average = responseTimes.reduce((total, time) => total + time, 0) / responseTimes.length;
console.log(average);
/*const sorted = [...responseTimes].sort((a, b) => a - b);

const labeledSorted = sorted.map((time) => {
    return { time: time, status: time > 2 ? "slow" : "fast" };
});
console.log(labeledSorted);
*/
/*
const labeled = responseTimes.map((time) => {
    return time > 2 ? "slow" : "fast";
});

const slowOnes = responseTimes.filter((time) => {
    return time > 2;
});

console.log(labeled);
console.log(slowOnes);
*/
let pageCount = 99;
if (pageCount > 0) {
    console.log("Loaded");
}
else {
    console.log("Empty");
}
let httpStatus = 404;
if (httpStatus === 200) {
    console.log("Successs");
}
else if (httpStatus === 404) {
    console.log("Not found - retrying");
}
else if (httpStatus >= 500) {
    console.log("Server error -backing off");
}
else {
    console.log(`Unexpected Status: ${httpStatus}`);
}
const pages = ["home", "about", "contact", "blog"];
pages.forEach((page, index) => {
    console.log(index, page);
});
let maxRetries = 5;
let attempt = 0;
let success = false;
while (attempt < maxRetries && !success) {
    attempt++;
    success = Math.random() < 0.5;
    if (success) {
        console.log(`Attempt ${attempt}: Success!`);
    }
    else {
        console.log(`Attempt ${attempt}: Failed, retrying...`);
    }
}
if (!success) {
    console.log("Gave up after", attempt, "attempts");
}
//# sourceMappingURL=day2.js.map