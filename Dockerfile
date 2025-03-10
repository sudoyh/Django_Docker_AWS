FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/sudoyh/Django_Docker_AWS.git

WORKDIR /home/Django_Docker_AWS/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure-(bap-4ft5p(xcuyffc944atg6+cm3k)k$nfttgwh-+84c+6s@a" > .env

RUN find . -name "*.pyc" -delete
RUn find . -name "__pycache__" -delete

RUN python manage.py makemigrations

RUN python manage.py migrate

EXPOSE 7000

CMD ["python","manage.py","runserver","0.0.0.0:7000"]

# FROM python:3.9.0
#
# WORKDIR /home/
#
# RUN git clone https://github.com/YimsuSon/djangoblog.git
#
# WORKDIR /home/djangoblog/
#
# RUN pip install -r requirements.txt
#
# RUN echo "SECRET_KEY=django-insecure-(bap-4ft5p(xcuyffc944atg6+cm3k)k$nfttgwh-+84c+6s@a" > .env
#
# RUN python manage.py migrate
#
# EXPOSE 8000
#
# CMD ["python","manage.py","runserver","0.0.0.0:8000"]