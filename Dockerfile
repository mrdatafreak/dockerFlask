FROM python:3.10

COPY ./requirements.txt /requirements.txt

WORKDIR /

RUN pip install -r requirements.txt

COPY . /

EXPOSE 5001

ENTRYPOINT ["python"]

CMD ["app/app.py"]
