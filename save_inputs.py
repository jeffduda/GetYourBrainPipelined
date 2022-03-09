import ants
import sys
import os
import logging

iDir = os.getenv("INPUT_DIR")
oDir = os.getenv("OUTPUT_DIR")

fname1 = ants.get_ants_data('r16')
fname2 = ants.get_ants_data('r64')
i1 = ants.image_read(fname1)
i2 = ants.image_read(fname2)

i1.to_file(os.path.join(iDir,"r16.nii.gz"))
i2.to_file(os.path.join(iDir,"r64.nii.gz"))