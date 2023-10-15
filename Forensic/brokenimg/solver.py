from PIL import Image
import numpy as np

# Open the image
image = Image.open('o3VdrMpt.png')

# Get pixel data and image dimensions
pixels = list(image.getdata())
width, height = image.size

# Split the pixels by rows
pixel_rows = [pixels[i * width: (i + 1) * width] for i in range(height)]

# Initialize an empty list to store the transformed rows
result = []

# Initialize the shift value
shift = 0

# Process each row
for row in pixel_rows:
    # Split the row into two halves
    left_half = row[:width - shift]
    right_half = row[width - shift:]

    # Reverse the order of the two halves (unshift)
    new_row = right_half + left_half

    # Update the shift value, wrapping around the row length
    shift = (shift + 3) % width

    # Append the transformed row to the result
    result.append(new_row)

# Convert the result to a NumPy array with uint8 data type
result_array = np.array(result, dtype=np.uint8)

# Create a new image from the NumPy array
new_image = Image.fromarray(result_array)

# Save the new image to a file
new_image.save('flag.png')
