FROM python:3.9-slim
RUN apt-get update && apt-get install -y apache2 apache2-utils libapache2-mod-wsgi-py3 && pip install virtualenv

ADD ./config-ser.conf /etc/apache2/sites-available/000-default.conf
COPY ./pythonBlog /var/www/app

WORKDIR /var/www/
RUN chown root:www-data app && chmod 777 app
WORKDIR /var/www/app
RUN mkdir error && virtualenv app && . app/bin/activate && pip install django django-ckeditor && python manage.py collectstatic --noinput && deactivate
RUN chmod 666 /var/www/app/db.sqlite3 && chmod 755 /var/www/app/pyBlog/ && chmod 755 /var/www/app/error
EXPOSE 80 
CMD ["apache2ctl", "-D", "FOREGROUND"]