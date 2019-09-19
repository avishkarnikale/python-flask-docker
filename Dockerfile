FROM python:3.6
LABEL maintainer="email2avishkar@gmail.com"
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
EXPOSE 80
ENTRYPOINT ["python"]
CMD ["app/app.py"]
