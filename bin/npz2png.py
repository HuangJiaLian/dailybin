#!/bin/env python3
from PIL import Image
import numpy as np
import os
npz_files = [f for f in os.listdir('.') if f.endswith('.npz')]

# Create a text log file to recod the original name of the NPZ files and the number of images in each file
with open('npz2png.log', 'w') as log_file:
    for npz_file in npz_files:
        # Load the NPZ file content
        data = np.load(npz_file)
        
        # Get the prefix of the NPZ file name
        prefix = npz_file.split('.')[0]
        
        # Extracting the data for visualization
        afm_images = data['data']
        
        # Determine the number of images
        num_images = afm_images.shape[2]
        
        # Write the log file
        log_file.write(f'{prefix}: {num_images}\n')

for npz_file in npz_files:
    # Load the NPZ file content
    data = np.load(npz_file)
    
    # Get the prefix of the NPZ file name
    prefix = npz_file.split('.')[0]
    
    # Extracting the data for visualization
    afm_images = data['data']
    
    # Determine the number of images
    num_images = afm_images.shape[2]
    
    # Calculate the min and max across all images for consistent scaling
    global_min = np.min(afm_images)
    global_max = np.max(afm_images)
    
    # Convert and save each image as a high-quality PNG file using Pillow
    for i in range(num_images):
        # Scale image data to 0-255 range based on global min/max
        img_data = (afm_images[:,:,i] - global_min) / (global_max - global_min) * 255
        img_data = img_data.astype(np.uint8)  # Convert to unsigned 8-bit integer
    
        # Create an image and save it using 8-bit grayscale
        img = Image.fromarray(img_data, 'L')
        # Name the files according to prefix and index of the image
        img.save(f'png/{prefix}_{i}.png')

