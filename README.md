# Use skypilot and GKE together for AI ML training/fine-tuning workload 
## GKE Cluster and node pools
See create-cluster.sh to create GKE standard clustr, with Nvidia-tesla-t4 nodepool
or Nvidia-l4 nodepool
Validations
```
gcloud container clusters get-credentials skypilotcluster --zone us-central1-c --project $PROJECT_ID
```

## Use skypilot CLI with cloud workstation
Build cloud workstation container image:
update cloudbuild.yaml, with proper artifact registry path
```
cd workstation
gcloud builds submit .
```

## prepare workbench instance

Build Workbench instance container image:
update workbench/cloudbuild.yaml, with proper artifact registry path
```
cd workbench
gcloud builds submit .
```

Create a Workbench instance with built container image:
```
gcloud workbench instances create skypilot-wb-instance --container-repository=us-east1-docker.pkg.dev/$PROJECT_ID/gke-llm/skypilot-bench --container-tag=latest --machine-type=n1-standard-4 --location=us-central1-b
```
or with GPU
```
gcloud workbench instances create skypilot-wb-instance --container-repository=us-east1-docker.pkg.dev/$PROJECT_ID/gke-llm/skypilot-bench --container-tag=latest --machine-type=n1-standard-4 --location=us-central1-b --accelerator-type=NVIDIA_TESLA_T4 --accelerator-core-count=1 
```

## Connect GCP and Kubernetes with Skypilot 
Open a terminal in Cloud Workstation or Workbench instance, 
```
gcloud init
gcloud auth application-default login
gcloud config set project PROJECT_ID
gcloud auth application-default set-quota-project PROJECT_ID
sky check
```
run SKy check and make sure 
Enabled clouds GCP(Checked)

## GKE GPU node pools
```
gcloud container clusters get-credentials testclusterromil --zone us-central1-c --project rick-vertex-ai

sky check
```

🎉 Enabled clouds 🎉
  ✔ GCP
  ✔ Kubernetes

## Run Workloads
Single instance
```
HF_TOKEN=xxx sky launch gemma.yaml -c gemma --env HF_TOKEN  --cloud kubernetes
```
SkyServe:
```
HF_TOKEN=xxx sky serve up llama3.yaml -n llama3 --env HF_TOKEN --cloud kubernetes
```
## Distributed Ray-train
### Run ray distribute training with Skypilot CLI
```
HF_TOKEN=xxx sky launch ray-train.yaml -c ray --env HF_TOKEN --cloud kubernetes
```
### Run Notebook in Workbench instance
 open ray-dist-train notebook , and run through all the steps


sky down cluster_name

## Cleanup resources



