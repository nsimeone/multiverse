pages = ["home", "about", "contact"]

for page in pages: 
    if page == "about":
        print("Found it!")
        break
else: 
    print("Not found in list")