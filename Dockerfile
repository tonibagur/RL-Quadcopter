FROM ros
RUN mkdir /catwin_ws
RUN mkdir /catwin_ws/src
RUN mkdir /catwin_ws/src/RL-Quadcopter
ADD . /catwin_ws/src/RL-Quadcopter
RUN apt-get update
RUN apt-get -y install python3-pip
RUN pip3 install -r /catwin_ws/src/RL-Quadcopter/requirements.txt
EXPOSE 11311
EXPOSE 8888
