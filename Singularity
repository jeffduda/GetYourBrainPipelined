Bootstrap: docker
From: jtduda/python-itk-sitk-ants:0.1.0

%environment
    export LC_ALL=C
    export INPUT_DIR=/data/input
    export OUTPUT_DIR=/data/output

%setup
   touch save_inputs.py
   touch smoothITK.py
   touch smoothSimpleITK.py
   touch smoothANTs.py
   touch registrationANTs.py
   touch registrationSimpleITK.py
   touch example.sh

%files
   save_inputs.py /opt/scripts
   smoothITK.py /opt/scripts
   smoothSimpleITK.py /opt/scripts
   smoothANTs.py /opt/scripts
   registrationANTs.py /opt/scripts
   registrationSimpleITK.py /opt/scripts
   example.sh /opt/scripts

%post
    apt-get update