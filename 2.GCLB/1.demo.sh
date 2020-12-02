Healthchecks determine which instances of a load balancer can recieve a new connections.

For HTTP loadbalancing the health check probes to load balanced instances come from address ranges in the ranges
130.211.0.0/22 and 35.191.0.0/16



Task 2: Create a NAT configuration using Cloud Router
The Google Cloud VM backend instances that you setup in Task 3 will not be configured with external IP addresses.

Instead, you will setup the Cloud NAT service to allow these VM instances to send outbound traffic only through the Cloud NAT,
and receive inbound traffic through the load balancer.

sudo apt-get update
sudo apt-get install -y apache2

sudo service apache2 start

sudo update-rc.d apache2 enable

In the Cloud Console, select webserver, and then click Reset.
In the confirmation dialog, click Reset.

Reset will stop and reboot the machine. It keeps the same IPs and the same persistent boot disk, but memory is wiped.
Therefore, if the Apache service is available after the reset, the update-rc command was successful.


















