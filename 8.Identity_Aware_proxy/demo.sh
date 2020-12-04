Create firewall rule.

Specify the following, and leave the remaining settings as their defaults:


Name	privatenet-allow-ssh
Network	privatenet
Targets	All instances in the network
Source filter	IP ranges
Source IP ranges	35.235.240.0/20
Protocols and ports	Specified protocols and ports
For tcp -->  checkbox and specify port 22.

In order to use Identity-Aware-Proxy, We just need to add Firewall and allow source IP range -35.235.240.0/20 to port 22.

In order to connect to your private instance using SSH, you need to open an appropriate port on the firewall.
IAP connections come from a specific set of IP addresses (35.235.240.0/20).
Therefore, you can limit the rule to this CIDR range.


gcloud compute ssh vm-internal --zone us-central1-c --tunnel-through-iap




