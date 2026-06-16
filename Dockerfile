# Используем стабильный легковесный образ Python
FROM python:3.10-slim

# Указываем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем список зависимостей и устанавливаем их
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем пайплайн и файлы проекта в контейнер
COPY credit_risk_pipeline.pkl .
COPY . .

# Команда, которая будет держать сервер активным
CMD ["python"]
