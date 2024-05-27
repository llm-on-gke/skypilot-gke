FROM gcr.io/deeplearning-platform-release/base-cpu
RUN pip install -U "skypilot-nightly[kubernetes,gcp]"
ENV PATH=$PATH:/home/jupyter/.local/bin
RUN apt-get update
RUN apt-get install -y rsync
RUN apt-get install -y socat
RUN apt-get install -y netcat
RUN apt-get install -y kubectl
RUN apt-get install -y google-cloud-sdk-gke-gcloud-auth-plugin
RUN apt-get install -y ssh
RUN mkdir /home/jupyter/.sky
COPY config.yaml /home/jupyter/.sky
RUN cd /home/jupyter
RUN git clone https://github.com/llm-on-gke/skypilot-gke
#RUN chown -R jupiter /home/jupiter/.sky/config.yaml



