FROM tensorflow/tensorflow:1.15.0-gpu-py3-jupyter

RUN sed -i 's/archive.ubuntu.com/ftp.daumkakao.com/g' /etc/apt/sources.list && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC && \
	apt-get update && \
	apt-get install -y ffmpeg libsm6 libxext6 git ninja-build libglib2.0-0 libsm6 libxrender-dev libxext6 vim curl

COPY requirements.txt /tf/TimeGAN/requirements.txt
RUN pip3 install --trusted-host ftp.daumkakao.com -i http://ftp.daumkakao.com/pypi/simple -r /tf/TimeGAN/requirements.txt