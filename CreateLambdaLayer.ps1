# Step 6: Copy the 'venv' folder and rename it to 'python'
Copy-Item -Recurse -Path ".\venv" -Destination ".\layer\python"

# Step 7: Remove unnecessary folders, keeping only the 'Lib' folder
Remove-Item -Recurse -Force ".\layer\python\Include"
Remove-Item -Recurse -Force ".\layer\python\Scripts"

# Step 8: Compress the 'python\Lib' folder into a ZIP file for AWS Lambda Layer
Compress-Archive -Path ".\layer\*" -DestinationPath ".\lambda_layer.zip"

# Step 9: Delete the 'layer' folder
Remove-Item -Recurse -Force ".\layer"
