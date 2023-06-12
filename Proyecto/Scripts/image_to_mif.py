from PIL import Image

original_picture_name = 'test.jpg'
preprocessed_picture_name = 'test_preprocessed.jpg'
mif_picture_name = 'test.mif'
desired_width = 256
desired_height = 256

def img_to_mif(original_picture_name, preprocessed_picture_name, mif_picture_name, desired_width, desired_height):

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
    hex_values = [hex(intensity)[2:] for intensity in pixel_data]

    width = 256
    depth = desired_width*desired_height

    with open(mif_picture_name, 'w') as f:
        f.write(f"WIDTH=32;\n")
        f.write(f"DEPTH=145000;\n")
        f.write("\n")
        f.write("ADDRESS_RADIX=HEX;\n")
        f.write("DATA_RADIX=HEX;\n")
        f.write("\n")
        f.write("CONTENT BEGIN\n")

        for i, value in enumerate(hex_values):
            f.write(f"    {hex(i)[2:]} :   {value};\n")

        for i in range(len(hex_values), 145000):
            f.write(f"    {hex(i)[2:]} :   0;\n")

        f.write("END;\n")
        
    return hex_values

def mif_list_to_mif(hex_values, desired_width, desired_height, mif_picture_name):

    width = 256
    depth = desired_width*desired_height

    with open(mif_picture_name, 'w') as f:
        f.write(f"WIDTH=32;\n")
        f.write(f"DEPTH={depth};\n")
        f.write("\n")
        f.write("ADDRESS_RADIX=HEX;\n")
        f.write("DATA_RADIX=HEX;\n")
        f.write("\n")
        f.write("CONTENT BEGIN\n")

        for i, value in enumerate(hex_values):
            f.write(f"    {hex(i)[2:]} :   {hex(value)[2:]};\n")

        f.write("END;\n")


