import random

max_retries = 5
attempt = 0
success = False

while attempt < max_retries and not success:
    attempt += 1
    success = random.choice([True, False])
    if success:
        print(f"Attempt {attempt}: Success!")
    else: 
        print(f"Attempt {attempt}: Failed, retrying")

if not success: 
    print("Gave up after", attempt, "attempts")