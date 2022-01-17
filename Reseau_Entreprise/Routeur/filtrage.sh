#!/bin/bash
## Script de filtrage
 
## On flush iptables
iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
 
## On accepte le Multicast
iptables -A INPUT -m pkttype --pkt-type multicast -j ACCEPT
 
## On drop tout le trafic entrant
iptables -P INPUT DROP
 
## On drop tout le trafic sortant
iptables -P OUTPUT DROP
 
## On drop le forward
iptables -P FORWARD DROP
 
## On drop les scans XMAS et NULL
iptables -A INPUT -m conntrack --ctstate INVALID -p tcp --tcp-flags FIN,URG,PSH FIN,URG,PSH -j DROP
iptables -A INPUT -m conntrack --ctstate INVALID -p tcp --tcp-flags ALL ALL -j DROP
iptables -A INPUT -m conntrack --ctstate INVALID -p tcp --tcp-flags ALL NONE -j DROP
iptables -A INPUT -m conntrack --ctstate INVALID -p tcp --tcp-flags SYN,RST SYN,RST -j DROP

## On accepte les connexions ssh
iptables -A INPUT -p tcp -i eth0 --dport ssh -j ACCEPT

## On accepte les connexion Web (port 80)
iptables -A INPUT -p tcp -i eth0 --dport 80 -j ACCEPT

## On accepte les ping
iptables -A INPUT -p icmp -j ACCEPT
iptables -A OUTPUT -p icmp -j ACCEPT
iptables -A FORWARD -p icmp -j ACCEPT
 
## On drop tous les paquets broadcastés
iptables -A INPUT -m pkttype --pkt-type broadcast -j DROP
 
## Permettre à une connexion ouverte de recevoir du trafic en entrée
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
 
## Permettre à une connexion ouverte de recevoir du trafic en sortie
iptables -A OUTPUT -m conntrack ! --ctstate INVALID -j ACCEPT
 
## On accepte la boucle locale en entrée
iptables -I INPUT -i lo -j ACCEPT

exit 0