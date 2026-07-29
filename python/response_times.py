response_times = [0.2, 1.5, 3.1, 0.4, 5.0]
for time in sorted(response_times, reverse=True): 
    if time > 2: 
        print(time, "- slow")
    else: 
        print(time, "- fast")
