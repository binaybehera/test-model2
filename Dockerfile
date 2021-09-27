#base image for code
FROM python:3

RUN pip install --upgrade pip
RUN pip install --requirement requirements.txt

# command to execute when image loads
CMD [ "python", "runmodel.py"]

# to rm image: docker rmi --force [id]
# to build:  docker build -t naive-time-series .
# to run: docker run naive-time-series
