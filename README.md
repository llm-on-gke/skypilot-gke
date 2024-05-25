# skypilot
## GKE Cluster and node pools

## prepare cloud workstation

## Install Skypilot 
pip install -U "skypilot-nightly[kubernetes,gcp]"
export PATH=$PATH:/home/user/.local/bin

sudo apt install rsync
sudo apt install socat
sudo apt install netcat

gcloud init

gcloud auth application-default login
gcloud config set project PROJECT_ID

gcloud auth application-default set-quota-project PROJECT_ID

run SKy check and make sure 
Enabled clouds GCP(Checked)

## GKE GPU node pools

gcloud container clusters get-credentials testclusterromil --zone us-central1-c --project rick-vertex-ai

sky check
🎉 Enabled clouds 🎉
  ✔ GCP
  ✔ Kubernetes

Create GPU nodepool, T4, or L4


sudo apt install rsync
sudo apt install socat
sudo apt install netcat
## Run Workloads
Single instance
HF_TOKEN=xxx sky launch gemma.yaml -c gemma --env HF_TOKEN  --cloud kubernetes

SkyServe:
HF_TOKEN=xxx sky serve up llama3.yaml -n llama3 --env HF_TOKEN --cloud kubernetes

## Distributed Ray-train
HF_TOKEN=xxx sky launch ray-train.yaml -c ray --env HF_TOKEN --cloud kubernetes

sky down cluster_name

## Cleanup resources



