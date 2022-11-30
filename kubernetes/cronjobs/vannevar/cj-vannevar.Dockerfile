FROM python:3.11

WORKDIR /usr/local/src
COPY vannevar_cj.py ./

CMD ["python", "/usr/local/src/vannevar_cj.py"]
