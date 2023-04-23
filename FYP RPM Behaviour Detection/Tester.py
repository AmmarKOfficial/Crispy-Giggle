import requests
import json
import numpy as np

def Input_data(my_array):

    # Define the URL of your Flask server
    url = 'http://127.0.0.1:8000/my-endpoint'

    # Convert the array to a JSON string
    data = json.dumps({'my_array': my_array})

    # Set the content type header to JSON
    headers = {'Content-type': 'application/json'}

    # Send the POST request to the Flask server
    response = requests.post(url, data=data, headers=headers)

    # Print the response from the server
    print(response.text)
