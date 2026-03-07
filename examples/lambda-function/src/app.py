import time

def lambda_handler(event, context):
    print("Lambda execution started...")
    time.sleep(3)
    print("Function executed successfully.")