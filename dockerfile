#Use a imagem Python 3 como base
FROM python:3

#Copie o arquivo requirements.txt para a imagem
COPY requirements.txt app/requirements.txt

#Configure a variável de ambiente FLASK_APP
ENV FLASK_APP=app.py

#Crie o diretório de trabalho na imagem
WORKDIR /app

#Instale as bibliotecas Python listadas no arquivo requirements.txt
RUN pip install -r requirements.txt

#Copie o código do aplicativo para a imagem
COPY . /app

#Exponha a porta 5000 para o tráfego externo
EXPOSE 5000

#Comando para iniciar o aplicativo
CMD ["flask", "run", "--host=0.0.0.0"]
