# Paso 1: Usar una imagen base de Python (Infraestructura ligera)
FROM python:3.9-slim

# Paso 2: Copiar tu código dentro del contenedor
COPY app.py /app.py

# Paso 3: Decirle al contenedor qué comando ejecutar al iniciar
CMD ["python", "/app.py"]