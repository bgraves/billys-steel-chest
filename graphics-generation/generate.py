from PIL import Image
import numpy as np

keyword2color = {
    'active-provider' : 'purple',
    'buffer'          : 'green',
    'passive-provider': 'red',
    'requester'       : 'blue',
    'storage'         : 'yellow',
}
color2weight = {
    'purple': 1.0,
    'green' : 1.0,
    'red'   : 1.0,
    'blue'  : 1.3,
    'yellow': 1.3,
}
def getweight(file):
    for keyword, color in keyword2color.items():
        if keyword in file:
            return color2weight[color]
    raise ValueError(f'No keyword match found for {file}')

def averageimages(files):
    # Load the first image and convert it to an array
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