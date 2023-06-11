from PIL import Image

def mif_to_img(filename, img_filename):
    with open(filename, 'r') as f:
        # Skip the header lines
        for _ in range(7):
            f.readline()

        # Read the content lines
        content_lines = f.readlines()

    # Extract the values from the content lines
    values = []
    content_lines = content_lines[:-1]
    for index, line in  enumerate(content_lines):
        value = line.split(':')[1][3:-2]
        values.append(int(value, base = 16))

    width = 256
    height = 256

    # Create the image
    image = Image.new('L', (width, height))

    # Set the pixel values
    image.putdata(values)

    image.save(img_filename)  # Save the image as JPEG file


    return image
