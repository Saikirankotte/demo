import time

print("Hello World from a secure Python container!")

# This keeps the container active so Kubernetes sees it as 'Ready'
while True:
    time.sleep(30)