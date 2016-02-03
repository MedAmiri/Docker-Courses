FROM hypriot/rpi-python
MAINTAINER Amiri
ENV work /home/code
ADD ./app.py $work/app.py
ADD ./requirements.txt $work/requirements.txt
WORKDIR ${work}
RUN pip install -r requirements.txt --proxy=10.0.4.2:3128
CMD python app.py
