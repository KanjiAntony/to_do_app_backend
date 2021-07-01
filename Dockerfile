FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
RUN apk --update add bash nano
ENV STATIC_URL /static
ENV STATIC_PATH /var/www/ToDoApp/static
COPY ./requirements.txt /var/www/ToDoApp/requirements.txt
RUN pip install -r /var/www/ToDoApp/requirements.txt
CMD ["flask", "run", "--host", "174.138.27.207"]
