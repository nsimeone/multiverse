import sys
print(sys.executable)

pages = ["home", "about", "contact"]
pages.append("blog")
pages.insert(1, "products")
pages.remove("about")
print(pages)

site = {"url": "site1.com", "status": 200, "response_time": 0.2}
print(site["url"])
print(site["status"])
site["status"] = 404
site["retries"] = 3
print(site)

visited_sites = {"site1.com", "site2.com", "site3.com"}
visited_sites.add("site1.com") # duplicate - won't actually add
visited_sites.add("site4.com")
print(visited_sites)

coordinates = (47.6, -122.2)
status_pair = (200, "Success")
# coordinates[0] = 50.0 # this would error - tuples are immutable
print(coordinates[0])
print(status_pair)

response_codes = ["200", "404", "200", "500", "404"]
print(response_codes)
print(set(response_codes))

page = {"url": "shop.com", "price": 49.99, "in_stock": True}
page["price"] = 39.99
page["discount_applied"] = True
print(page)

pages = [
    {"url": "python.com", "price": 49.99},
    {"url": "javascript.com", "price": 0},
    {"url": "rust.com", "price": 29.99}
]
for page in pages:
    print(page["url"], page["price"])

# status_pair = (404, "Not Found")
# status_pair[0] = 500
# print(status_pair)

seen_urls = set()
urls_to_check = ["site1.com", "site2.com", "site1.com", "site3.com", "site2.com"]


