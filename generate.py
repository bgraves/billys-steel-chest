import os
import glob
import numpy as np
from PIL import Image

colorkeywords = [
    ('purple','active-provider'),
    ('green','buffer'),
    ('red','passive-provider'),
    ('blue','requester'),
    ('yellow','storage'),
]
color2weight = {
    'purple': 1.0,
    'green' : 1.0,
    'red'   : 1.0,
    'blue'  : 1.3,
    'yellow': 1.3,
}
def getweight(file):
    for color, keyword in colorkeywords:
        if keyword in file:
            return color2weight[color]
    raise ValueError(f'No keyword match found for {file}')

# Squaring rgb values before averaging gives better results
# https://stackoverflow.com/questions/649454/what-is-the-best-way-to-average-two-colors-that-define-a-linear-gradient
def averageimages(files):
    pixelsum = 0.0
    weightsum = 0.0
    for file in files:
        rgba = np.array(Image.open(file), dtype=np.double)
        weight = getweight(file)
        pixelsum += weight * (rgba * rgba)
        weightsum += weight
    rgba_float = np.sqrt(pixelsum / weightsum)
    rgba = np.round(rgba_float).astype(dtype=np.uint8)
    return Image.fromarray(rgba)

outputfolder = 'graphics'
groupfolder = 'source-graphics'
root, _ = os.path.split(os.path.realpath(__file__))
groupfolder = os.path.join(root, groupfolder)
for group in os.listdir(groupfolder):
    wildcard = os.path.join(groupfolder, group, '*.png')
    files = glob.glob(wildcard)
    if len(files) != len(colorkeywords):
        raise ValueError(f'Expected {len(colorkeywords)} files but found {len(files)} in {group} folder {wildcard}')
    img = averageimages(files)
    outputpath = os.path.join(root, outputfolder, f'{group}.png')
    img.save(outputpath)
    print(f'Successfully generated {group}.png')

print('Done!\n')
