FROM us-central1-docker.pkg.dev/cloud-workstations-images/predefined/code-oss:latest
RUN pip install -U "skypilot-nightly[kubernetes,gcp]"
ENV PATH=$PATH:/home/user/.local/bin
RUN apt-get update
RUN apt-get install -y rsync
RUN apt install -y socat
RUN apt install -y netcat


