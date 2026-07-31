package main

import (
	"fmt"
	"math/rand"
)

var statusCode int = 500

func main() {
	pageName := "home"
	retryCount := 3
	isAutomated := true

	fmt.Println(pageName, retryCount, isAutomated)

	statusCode := 404

	if statusCode == 200 {
		fmt.Println("Success")
	} else if statusCode == 404 {
		fmt.Println("Not found - retrying")
	} else if statusCode == 500 {
		fmt.Println("Server error - backing off")
	} else {
		fmt.Println("Unexpected Status:", statusCode)
	}

	switch statusCode {
	case 200:
		fmt.Println("Success")
	case 404:
		fmt.Println("Not Found - Retrying")
	case 500:
		fmt.Println("Unexpected Status:", statusCode)
	}

	statusCodes := []int{200, 404, 500, 301}

	for _, code := range statusCodes {
		switch code {
		case 200:
			fmt.Println("Success")
		case 404:
			fmt.Println("Not found - retrying")
		case 500:
			fmt.Println("Server error - backing off")
		default:
			fmt.Println("Unexpected status:", code)
		}
	}

	pageCount := 0

	if pageCount > 0 {
		fmt.Println("Loaded")
	} else {
		fmt.Println("Empty", pageCount)
	}

	httpStatus := 500

	switch httpStatus {
	case 200:
		fmt.Println("Success")
	case 301:
		fmt.Println("You're Lost")
	case 404:
		fmt.Println("Not found - retrying")
	case 500:
		fmt.Println("Server error - backing off")
	default:
		fmt.Println("Unexpected status:", httpStatus)
	}

	pages := []string{"home", "about", "contact", "blog"}
	for i, page := range pages {
		fmt.Println(i, page)
	}

	responseTimes := []float64{0.2, 1.5, 3.1, 0.4, 5.0}

	for _, time := range responseTimes {
		if time > 2 {
			fmt.Println("slow", time)
		} else {
			fmt.Println("fast", time)
		}
	}

	maxRetries := 5
	attempt := 0
	success := false

	for attempt < maxRetries && !success {
		attempt++
		success = rand.Float64() < 0.05
		if success {
			fmt.Println("Attempt", attempt, ": Success!")
		} else {
			fmt.Println("Attempt", attempt, ": Failed, retrying...")
		}
	}

	if !success {
		fmt.Println("Gave up after", attempt, "attempts")
	}
}
