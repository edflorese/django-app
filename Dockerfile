FROM python:3.12
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY mysite /app
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

#docker run -p 8000:8000 django-app