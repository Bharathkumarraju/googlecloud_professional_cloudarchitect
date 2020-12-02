Cloud VPN securely connects your on-premises network to your GCP VPC netwrok through Ipsec VPN tunnel

traffic encrypts in one VPN gateway and decrypts in another VPN gateway
Useful for low volume data connections.

Supports:
--------->
1. Site-to-site VPN
2. Static Routes
3. Dynamic routes(Cloud Router)
4. IKEv1 and IKEv2 ciphers


NOT:
------>
Cloud VPN does not support use cases where client computer needs to Dail-in to a VPN using a client VPN software.

It supports only 1.4KB as MTU i.e. Maximum tansmission unit.

