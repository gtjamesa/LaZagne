FROM python:3.7

WORKDIR /app

COPY requirements.txt /app 

RUN pip install -r /app/requirements.txt \
    && pip install pyinstaller \
    && rm -rf /app/bin

COPY . /app

WORKDIR /app/Linux

VOLUME /app

#CMD pyinstaller --onefile -w /app/Linux/laZagne.py --distpath /app/bin 
CMD pyinstaller laZagne.spec 
