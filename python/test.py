import json

seen_urls = {"site1.com", "site2.com", "site3.com"}

with open("test.json", "w") as f:
    json.dump(list(seen_urls), f)

print("Done, check for test.json")