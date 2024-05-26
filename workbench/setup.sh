#!/bin/bash
pip install -U "skypilot-nightly[kubernetes,gcp]"
export PATH=$PATH:/home/user/.local/bin
sudo apt-get update
sudo apt-get install -y rsync
sudo apt-get install -y socat
sudo apt-get install -y netcat
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin

