# Report: Upgrading SunToWater's IT Infrastructure

## Introduction:
The purpose of this report is to provide an overview of the IT infrastructure upgrade project for SunToWater, a recent acquisition of GlobeX. The project aims to develop a repeatable means of standing up a domain controller (DC) for SunToWater's network and building a secure site-to-site VPN tunnel to communicate with GlobeX's network resources. Additionally, a network access control system will be implemented to ensure security and authentication of new network users.

## DC Standing-up Project:
The project team was assigned to develop a Powershell script that could fully stand up all the requisite services to make the server into a DC. The minimum required components of the script were listed in the project guidelines document, and each team member contributed their individual share of the overall script.

## The final script reflected an equal effort from all team members and included the following components:

Installation and configuration of Active Directory Domain Services
Installation and configuration of DNS Server
Creation of users and OUs in accordance with the organizational chart
Configuration of Group Policy Objects
Configuration of DHCP Server
Site-to-Site VPN Tunnel:
The VP of Special Projects explicitly requested the project team to build a site-to-site VPN tunnel to communicate securely with SunToWater's network resources. The team altered some parameters compared to what was performed in class and demonstrated successful access to a file server on the other end of the tunnel.

## The following components were included in the site-to-site VPN tunnel:

Configuration of Virtual Private Network (VPN) Gateway and Virtual Network
Configuration of Network Address Translation (NAT) Gateway
Configuration of Local Network Gateway
Configuration of Connection between Local Network Gateway and VPN Gateway
Configuration of Routing
Network Access Control:
SunToWater had experienced network intrusions in the past, and the management was concerned about the security of the two networks. The project team was tasked with implementing a network access control system that provides a healthy level of authentication, authorization, and accounting (AAA) security management.

We deployed a RADIUS system that raised a captive portal for new network users and authenticated them using AD credentials. The following components were included in the network access control system:

## Installation and configuration of NPS Server
Configuration of RADIUS clients
Configuration of Network Policies
Configuration of Connection Request Policies
Conclusion:
The IT infrastructure upgrade project for SunToWater was successfully completed by the project team, including the development of a Powershell script to stand up a domain controller, building a site-to-site VPN tunnel, and implementing a network access control system. The project team demonstrated successful access to SunToWater's network resources and provided evidence of AAA in the final configuration. The upgrade will help SunToWater align better with GlobeX's mission and ensure secure communication between the two networks.
