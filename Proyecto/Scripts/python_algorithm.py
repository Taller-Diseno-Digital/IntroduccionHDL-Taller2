from image_to_mif import *
from mif_to_image import *

original_picture_name = 'test.jpg'
preprocessed_picture_name = 'test_preprocessed.jpg'
img_processed_name = 'test_processed.jpg'
mif_processed_name = 'test_processed.mif'
mif_picture_name = 'test.mif'
desired_width = 256
desired_height = 256


def freq(mif_list):
    frequency = [0]*256
    for pixel in range(len(mif_list)):
        frequency[int(mif_list[pixel], base=16)] = frequency[int(mif_list[pixel], base=16)] + 1
    return frequency

def ac_freq(frequency):
    ac_freq = [0]*256
    summatory = 0
    for intensity_value in range(len(frequency)):
        summatory += frequency[intensity_value]
        ac_freq[intensity_value] = summatory
    return ac_freq

def dist_freq(ac_frequency):
    med = ac_frequency[-1]//256
    dist_frequency = [med]*256
    residuo = ac_frequency[-1]-256*med
    dist_frequency[-1] = dist_frequency[-1] + residuo
    return dist_frequency

def remapper(ac_frequency, ac_dist_frequency):
    remap = [0]*256
    for i_acf in range(len(ac_frequency)):
        least_val = ac_frequency[-1]
        temp_remap = 0
        for i_acdistf in range(len(ac_dist_frequency)):
            diff = abs(ac_frequency[i_acf]-ac_dist_frequency[i_acdistf])
            if diff < least_val:
                temp_remap = i_acdistf
                least_val = diff
        remap[i_acf] = temp_remap
    return remap

def image_mapper(remap, mif_list):
    mif_list_edit = [0]*(256*256)
    for pixel in range(len(mif_list)):
        mif_list_edit[pixel] = remap[int(mif_list[pixel], base = 16)]
    return mif_list_edit

mif_list = img_to_mif(original_picture_name, preprocessed_picture_name, mif_picture_name, desired_width, desired_height)
frequency = freq(mif_list)
ac_frequency = ac_freq(frequency)
dist_frequency = dist_freq(ac_frequency)
ac_dist_frequency = ac_freq(dist_frequency)
remap = remapper(ac_frequency, ac_dist_frequency)
mif_list_edit = image_mapper(remap, mif_list)
mif_list_to_mif(mif_list_edit, desired_width, desired_height, mif_processed_name)
mif_to_img(mif_processed_name, img_processed_name)
print(frequency)
print("\n\n")
print(ac_frequency)





