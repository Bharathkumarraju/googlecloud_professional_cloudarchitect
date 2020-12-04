By default we can SSH to VM because of the allow-ssh firewall rule, Which allows incoming traffic from anywhere(0.0.0.0/0) for tcp:22

The SSH connection works seemlessly because Compute Engine generates an SSH key for us and stores it in one of the following locations.

1. By default Compute Engine adds the generated key to project or instance metadata.
2. if our accout is configured to use OS Login, Compute Engine stores the generated key with the user account it self.

Alternatively, we can control access to Linux instances by creating SSH keys nad editing public SSH key metadata.

