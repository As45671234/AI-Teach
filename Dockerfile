# Используйте официальный образ Python
FROM python:3.9

# Установите рабочую директорию
WORKDIR /app

# Скопируйте файл зависимостей и установите зависимости
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Скопируйте приложение
COPY . .

# Укажите команду для запуска приложения
CMD ["python", "app.py"]

# Укажите порт, который ваше приложение будет слушать
EXPOSE 8080
