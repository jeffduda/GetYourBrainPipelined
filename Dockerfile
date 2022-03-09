FROM ubuntu:20.04
MAINTAINER Jeffrey Duda <jeff.duda@gmail.com>

RUN apt-get update && apt-get install -y \
  python3-pip git \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install numpy itk antspyx SimpleITK itk-elastix

#ENV FLYWHEEL=/flywheel/v0
#RUN mkdir -p ${FLYWHEEL}
ENV INPUT_DIR=/data/input
ENV OUTPUT_DIR=/data/output

#COPY *.py ${FLYWHEEL}/.
#COPY *.csv ${FLYWHEEL}/.

RUN mkdir -p ${INPUT_DIR}
RUN mkdir -p ${OUTPUT_DIR}
RUN mkdir -p /apps
RUN mkdir -p /scripts
#COPY smooth.py /apps/smooth.py

#RUN echo "test app"
CMD tail -f /dev/null

#ENTRYPOINT ["python3.py blur.py"]
