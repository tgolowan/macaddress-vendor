FROM python:3.7-alpine
RUN pip3 install requests 
COPY input.py /input.py
CMD chown 770 /input.py
CMD python /input.py

