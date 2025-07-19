## Skypilot notes:
### Install skypilot packages 
```bash
uv pip install -U skypilot-nightly[gcp]>=1.0.0.dev20250711
uv pip install -U skypilot-nightly[kubernetes]>=1.0.0.dev20250711
```
### 
install 3 apt packages:
```bash
sudo apt update && sudo apt install socat && sudo apt install  netcat-openbsd
sudo apt install rsync
```
for gcp:
gcloud auth application-default login

Make sure your ~/.sky/config.yaml is set up for DWS:

kubernetes:
  autoscaler: gke
  provision_timeout: 3000
  dws:
    max_run_duration: 10m
    enabled: true 

sky check
🎉 Enabled infra 🎉
  GCP [compute, storage]
  Kubernetes [compute]
    Allowed contexts:
    └── gke_gpu-launchpad-playground_us-central1_rick-h200-gke
### Execute job
```bash
sky launch -c nccl nccl_rdma_gke_h200.yaml
```