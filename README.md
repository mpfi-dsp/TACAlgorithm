# TACAlgorithm
Computer Vision ImageJ Macro to label gold particles in immunogold labeled EM images

1. Applies a fixed parameter gray-level threshold to the image.
2. Remaining binary components are filtered between a predetermined minimum and maximum area parameter.
  - These parameters are chosen based on the known sizes of gold particle contained in the image (e.g., 6 and 12 nm). 
3. A circularity threshold is applied to each component to validate the common roundness of colloidal gold particles.
