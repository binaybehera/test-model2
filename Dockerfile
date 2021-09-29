#base image for code
FROM python:3.6

RUN pip install --upgrade pip
COPY requirements.txt initial_data.csv model.py runmodel.py ./
RUN pip install --no-cache-dir -r requirements.txt
#RUN  pip uninstall pystan;pip install pystan==2.18;pip uninstall holidays;pip install holidays==0.9.12

# command to execute when image loads
CMD [ "python", "runmodel.py", "$CHALLENGE"]

# to rm image: docker rmi --force [id]
# to build:  docker build -t naive-time-series .
# to run: docker run naive-time-series
