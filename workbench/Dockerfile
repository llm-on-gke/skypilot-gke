FROM gcr.io/deeplearning-platform-release/base-cpu
RUN pip install -U "skypilot-nightly[kubernetes,gcp]"
ENV PATH=$PATH:/home/user/.local/bin
RUN apt-get update
RUN apt-get install -y rsync
RUN apt-get install -y socat
RUN apt-get install -y netcat
RUN apt-get install -y google-cloud-sdk-gke-gcloud-auth-plugin
#COPY move-config.sh /etc/workstation-startup.d/
RUN sky check
COPY config.yaml /home/jupiter/.sky
sudo chown -R user /home/jupiter/.sky/config.yaml



