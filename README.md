# GetYourBrainPipelined
Example scripts for setting up a brain processing pipeline

## Running the example
A 'Dockerfile' is provided to show how the image may be built. The build process takes a while so instead you may want to use a provided image that was created with the Dockerfile:

docker pull jtduda/python-itk-sitk-ants:0.1.0

Now you will need a directory for input data and for output data. For illustration we will call these /local/data/input and /local/data/output. We will refer to the location of this repo as /local/repo/GetYourBrainPipelined. The example may now be run via:

docker run -v /local/data/input:/data/input -v /local/data/output:/data/output -v /local/repo/GetYourBrainPipelined:/scripts jtduda/python-itk-sitk-ants:0.1.0 /scripts/example.sh

This will run the following python programs:
* save_inputs.py - prepopulate the input directory with some example data
* smoothITK.py - smooth an image using the itk python module
* smoothSimpleITK.py - smooth an image using the SimpleITK python module
* smoothANTs.py - smooth an image using the ants python module
* registrationANTs.py - simple registration using the ants python module

All outputs will be saved in the /local/data/output directory.