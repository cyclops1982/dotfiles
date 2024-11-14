#!/bin/bash

AICommand() {
    text="$1"
    echo $text
    # Create a simple JSON object with the text
    json_string=$(cat <<EOF
        {
            "model": "llama3.1:8b",
            "prompt": "Do not enclose quotes or code with backticks. Provide only bash command or script. $text",
            "options": {
                "temperature": 0
            },
            "stream": false
        }
EOF )

    response=$(curl -s -X POST \
        --header 'Content-Type: application/json' \
        -d "$json_string" \
        http://localhost:11434/api/generate)

    # Check if the response was successful (status code 200)
    if [ $? -eq 0 ]; then
        # If successful, use jq to extract the response property from the JSON response
        result=$(jq -r '.response' <<<"$response")

        echo "The AI suggested:"
        echo $result
        echo ""
        echo "Do you want to execute this? (Press Y)"
        read -s -n 1 -r char

        if [ "$char" = "y" ]; then
            eval $result
        fi

    else
        # If not successful, print the error message
        echo "CURL failed: $response"
    fi
}
