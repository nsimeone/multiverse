http_status = 301

if http_status == 200: 
    print("OK")
elif http_status == 301: 
    print("Redirected")
elif http_status == 404:
    print("Not Found")
elif http_status == 500:
    print("Server Error")
else: 
    print("Unhandled status code")