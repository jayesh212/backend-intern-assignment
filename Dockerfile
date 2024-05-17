FROM python:3.8-slim

WORKDIR .

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . . 

EXPOSE 7755

RUN bash ./runTests.sh
RUN bash ./resetDB.sh

CMD ["bash","./run.sh"]

