#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jan 29 12:42:35 2021

@author: mzins
"""

from seven_scenes_tools import SevenScenes_loader
import numpy as np
from scipy.spatial.transform.rotation import Rotation as Rot
import os

output_file = "posenet_7-Scenes_dataset_seq_01_03_04_05_06.txt"
output_file = "posenet_7-Scenes_dataset_seq_02.txt"
output_file = "posenet_7-Scenes_dataset_seq_03.txt"
# output_file = "posenet_7-Scenes_dataset_seq_05.txt"

sequences = ["seq-01", "seq-03", "seq-04", "seq-05", "seq-06"]
sequences = ["seq-02"]
sequences = ["seq-03"]
# sequences = ["seq-05"]

output_lines = []

for seq in sequences:
    folder = os.path.join("/media/mzins/DATA1/7-Scenes/chess/", seq)
    loader = SevenScenes_loader(folder)
    print("Treating", folder)

    for idx in range(loader.nb_images):
        f = loader.get_rgb_filename(idx)
        R, t = loader.get_corrected_Rt(idx)
        o = R.T
        p = R.T @ t
        qx, qy, qz, qw = Rot.from_matrix(o).as_quat()

        output_lines.append("%s %f %f %f %f %f %f %f\n" % (f, p[0], p[1], p[2], qw, qx, qy, qz))


with open(output_file, "w") as fout:
    fout.write("# filename x y z qw qx qy qz\n")
    fout.write("# always need 3 header lines\n")
    fout.write("# because 3 lines are ignored\n")
    fout.writelines(output_lines)

print("Done.")
print("Output in", output_file)