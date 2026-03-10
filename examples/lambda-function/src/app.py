import time

def lambda_handler(event, context):
    print("Lambda execution started...")
    print("Sleeping for 3 seconds to simulate work...")
    time.sleep(3)
    print("Lambda execution completed.")
    print("Function executed successfully.")