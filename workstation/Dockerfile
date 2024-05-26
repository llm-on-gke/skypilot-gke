FROM us-central1-docker.pkg.dev/posit-images/cloud-workstations/workbench:latest 
#us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest
RUN pip install -U "skypilot-nightly[kubernetes,gcp]"
ENV PATH=$PATH:/home/user/.local/bin
RUN apt-get update
RUN apt-get install -y rsync
RUN apt install -y socat
RUN apt install -y netcat
COPY move-config.sh /etc/workstation-startup.d/
COPY config.yaml /
RUN chmod +x /etc/workstation-startup.d/move-config.sh


