student_03_83164088d1b5@cloudshell:~ (qwiklabs-gcp-03-0ae16056878b)$ gcloud deployment-manager deployments create dminfra --config=config.yaml --preview
The fingerprint of the deployment is b'bT05fjmh1wGW9YbQNyKGoA=='
Waiting for create [operation-1606958266252-5b58520a0fd2c-c2e37fd8-b8a4a9f4]...done.
Create operation operation-1606958266252-5b58520a0fd2c-c2e37fd8-b8a4a9f4 completed successfully.
NAME                               TYPE                 STATE       ERRORS  INTENT
mynet-eu-vm                        compute.v1.instance  IN_PREVIEW  []      CREATE_OR_ACQUIRE
mynet-us-vm                        compute.v1.instance  IN_PREVIEW  []      CREATE_OR_ACQUIRE
mynetwork                          compute.v1.network   IN_PREVIEW  []      CREATE_OR_ACQUIRE
mynetwork-allow-http-ssh-rdp-icmp  compute.v1.firewall  IN_PREVIEW  []      CREATE_OR_ACQUIRE
student_03_83164088d1b5@cloudshell:~ (qwiklabs-gcp-03-0ae16056878b)$

student_03_83164088d1b5@cloudshell:~ (qwiklabs-gcp-03-0ae16056878b)$ gcloud deployment-manager deployments update dminfra
The fingerprint of the deployment is b'nHrNsQP2oZxlZFYnZyw2nA=='
Waiting for update [operation-1606958503913-5b5852ecb66eb-f4fd2888-15ec3047]...done.
Update operation operation-1606958503913-5b5852ecb66eb-f4fd2888-15ec3047 completed successfully.
NAME                               TYPE                 STATE      ERRORS  INTENT
mynet-eu-vm                        compute.v1.instance  COMPLETED  []
mynet-us-vm                        compute.v1.instance  COMPLETED  []
mynetwork                          compute.v1.network   COMPLETED  []
mynetwork-allow-http-ssh-rdp-icmp  compute.v1.firewall  COMPLETED  []
student_03_83164088d1b5@cloudshell:~ (qwiklabs-gcp-03-0ae16056878b)$



Without --preview and update directly we can run as below.

gcloud deployment-manager deployments create dminfra --config=config.yaml
