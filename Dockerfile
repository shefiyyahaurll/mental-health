FROM tensorflow/serving:latest

COPY . /models
ENV MODEL_NAME=mental-prediction-model