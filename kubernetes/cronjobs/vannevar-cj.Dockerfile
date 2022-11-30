FROM python:3.9

WORKDIR /usr/local/src
COPY vannevar-cj.py ./

CMD ["python", "/usr/local/src/vannevar-cj.py"]
