FROM docker.io/jleighsutherland/dream-base:v2

WORKDIR /app

COPY model /app/model

COPY gradio-serving.py /app/gradio-serving.py

COPY entrypoint.sh /app/entrypoint.sh

RUN pip install -r model/requirements.txt

EXPOSE 5000

EXPOSE 7860

CMD ["/bin/bash", "-c", "entrypoint.sh"] 


