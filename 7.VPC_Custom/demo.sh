gcloud compute networks create managementnet --project=qwiklabs-gcp-02-58214e6a7c64 --subnet-mode=custom --mtu=1460 --bgp-routing-mode=regional

gcloud compute networks subnets create managementsubnet-us --project=qwiklabs-gcp-02-58214e6a7c64 --range=10.130.0.0/20 --network=managementnet --region=us-central1



gcloud compute networks create privatenet --subnet-mode=custom

gcloud compute networks subnets create privatesubnet-us --network=privatenet --region=us-central1 --range=172.16.0.0/24


gcloud compute networks subnets create privatesubnet-eu --network=privatenet --region=europe-west1 --range=172.20.0.0/20


student_02_23cfdc7f3f04@cloudshell:~ (qwiklabs-gcp-02-58214e6a7c64)$ gcloud compute networks create privatenet --subnet-mode=custom
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-58214e6a7c64/global/networks/privatenet].
NAME        SUBNET_MODE  BGP_ROUTING_MODE  IPV4_RANGE  GATEWAY_IPV4
privatenet  CUSTOM       REGIONAL

Instances on this network will not be reachable until firewall rules
are created. As an example, you can allow all internal traffic between
instances as well as SSH, RDP, and ICMP by running:

$ gcloud compute firewall-rules create <FIREWALL_NAME> --network privatenet --allow tcp,udp,icmp --source-ranges <IP_RANGE>
$ gcloud compute firewall-rules create <FIREWALL_NAME> --network privatenet --allow tcp:22,tcp:3389,icmp

student_02_23cfdc7f3f04@cloudshell:~ (qwiklabs-gcp-02-58214e6a7c64)$ gcloud compute networks subnets create privatesubnet-us --network=privatenet --region=us-central1 --range=172.16.0.0/24
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-58214e6a7c64/regions/us-central1/subnetworks/privatesubnet-us].
NAME              REGION       NETWORK     RANGE
privatesubnet-us  us-central1  privatenet  172.16.0.0/24
student_02_23cfdc7f3f04@cloudshell:~ (qwiklabs-gcp-02-58214e6a7c64)$ gcloud compute networks subnets create privatesubnet-eu --network=privatenet --region=europe-west1 --range=172.20.0.0/20
Created [https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-02-58214e6a7c64/regions/europe-west1/subnetworks/privatesubnet-eu].
NAME              REGION        NETWORK     RANGE
privatesubnet-eu  europe-west1  privatenet  172.20.0.0/20
student_02_23cfdc7f3f04@cloudshell:~ (qwiklabs-gcp-02-58214e6a7c64)$


gcloud compute firewall-rules create privatenet-allow-icmp-ssh-rdp --direction=INGRESS --priority=1000 --network=privatenet --action=ALLOW --rules=icmp,tcp:22,tcp:3389 --source-ranges=0.0.0.0/0

gcloud compute instances create privatenet-us-vm --zone=us-central1-c --machine-type=f1-micro --subnet=privatesubnet-us --image-family=debian-10 --image-project=debian-cloud --boot-disk-size=10GB --boot-disk-type=pd-standard --boot-disk-device-name=privatenet-us-vm










