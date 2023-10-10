import json
import requests

def lambda_handler(event, context):
    
    response = requests.get("https://data.cityofchicago.org/resource/xguy-4ndq.csv")
    
    if response.status_code == 200:
        # Print the raw CSV content
        print(response.text)
    else:
        print("Failed to download:", response.status_code)
        
    return {
        'statusCode': 200,
        'body': json.dumps('ChicagoCrimeDataIngestor finished1')
    }
