# image source
FROM python:3.8

COPY requirements.txt /requirements.txt
RUN pip install -r requirements.txt && rm requirements.txt

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

