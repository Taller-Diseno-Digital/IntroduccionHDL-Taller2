from PIL import Image

original_picture_name = 'test.jpg'
preprocessed_picture_name = 'test_preprocessed.jpg'
mif_picture_name = 'test.mif'
desired_width = 256
desired_height = 256

# Open the image file
image = Image.open(original_picture_name)

# Convert the image to grayscale
grayscale_image = image.convert("L")

# Resize image if necessary
resized_image = grayscale_image.resize((desired_width, desired_height))

# Save the preprocessed image
resized_image.save(preprocessed_picture_name)

# Get pixel data as a sequence
pixel_data = list(resized_image.getdata())

# Convert intensity values to decimal representation
hex_values = [hex(intensity) for intensity in pixel_data]

width = 256
depth = desired_width*desired_height

with open(mif_picture_name, 'w') as f:
    f.write(f"WIDTH={width};\n")
    f.write(f"DEPTH={depth};\n")
    f.write("\n")
    f.write("ADDRESS_RADIX=HEX;\n")
    f.write("DATA_RADIX=HEX;\n")
    f.write("\n")
    f.write("CONTENT BEGIN\n")

    for i, value in enumerate(hex_values):
        f.write(f"    {hex(i)} :   {value};\n")

    f.write("END;\n")

