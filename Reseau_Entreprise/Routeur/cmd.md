# Commandes pour le routeur principale du réseau entreprise

    docker run -it --name routeur_dino --cap-add NET_ADMIN alpine

    iptables -A INPUT -m conntrack --ctstate ESTABLISHED -j ACCEPT <!-- co déjà établies -->
    iptables -A INPUT -p tcp -i eth0 --dport ssh -j ACCEPT <!-- ssg -->
    iptables -A INPUT -p tcp -i eth0 --dport 80 -j ACCEPT <!-- web -->
    
    iptables -P INPUT DROP <!-- drop tout le reste -->

    iptables -I INPUT 2 -i lo -j ACCEPT <!-- loopback -->

    iptables -A OUTPUT -p icmp -m conntrack --ctstate NEW,ESTABLISHED,RELATED -j ACCEPT <!-- Ping -->
    iptables -A INPUT -p icmp -j ACCEPT

https://doc.ubuntu-fr.org/iptables