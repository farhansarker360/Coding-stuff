#!/bin/bash

clear

Output_file="Scan-Result.txt"

echo "****************************NMAP SCANNER********************************"
echo "1.Basic Scan "
echo "2.Stealth Scan"
echo "3.Scan All Ports"
echo "4.Scan a Range of IPs"
echo "5.Aggressive Scan"
echo "6.Scan for OS Detection"
echo "7.Service Version Detection"
echo "8.Ping Scan"
echo "9.Scan Multiple Targets"
echo "10.Fast Scan"
echo "11.TCP Scan"
echo "12.UDP Scan"
echo "13.Scan for Common Vulnerabilities"
echo "14.Scan for Heartbleed Vulnerability"
echo "15.Scan for SQL Injection"
echo "16.Scan for Cross-Site Scripting (XSS)"
echo "17.Scan for SMB Shares"
echo "18.Scan for SNMP Information"
echo "19.Scan for SSH Weak Algorithms"
echo "20.Scan for SSL/TLS Vulnerabilities:"
echo ""
echo "IP/HOST: "

read IP_Host

echo ""

echo "select any scan method:"

read Scan_Method

echo "************************************************************************"

case $Scan_Method in
   
      1)  # Basic Scan
              nmap --script vuln $IP_Host > $Output_file
              ;;
            
      2)  # Stealth Scan
              nmap --script vuln -sS $IP_Host > $Output_file
              ;;
    
      3)  # Scan All Ports
              nmap --script vuln -p- $IP_Host > $Output_file
              ;;
                
      4)  # Scan A Range Of ips
              nmap --script vuln $IP_Host > $Output_file
             ;;
       
      5)  # Aggresive scan 
              nmap --script vuln -A $IP_Host > $Output_file
              ;;
            
      6)  # Scan For OS Detection
              nmap --script vuln -O $IP_Host > $Output_file
              ;;

      7)  # Service Version Detection 
              nmap --script vuln -sV $IP_Host > $Output_file
              ;;

      8)  # Ping Scan
              nmap --script vuln -sn $IP_Host > $Output_file
              ;;
     
     10) # Fast Scan
              nmap --script vuln -F $IP_Host > $Output_file
          ;;

    11) # TCP Scan
              nmap --script vuln -sT $IP_Host > $Output_file
          ;;
    
    12) # UDP Scan
              nmap --script vuln -sU $IP_Host > $Output_file
          ;;

    13) # Scan For Common Vulnerabilities
                nmap --script smb-vuln*  $IP_Host > $Output_file
          ;;
   
    14) # Scan for Heartbleed Vulnerability
              nmap --script ssl-heartbleed $IP_Host > $Output_file
          ;;
  
    15) # Scan for SQL Injection
             nmap --script http-sql-injection $IP_Host > $Output_file
         ;;
    
    16) # Scan for Cross-Site Scripting (XSS) 
             nmap --script http-xss $IP_Host > $Output_file
        ;;
   
    17) # Scan for SMB Shares 
            nmap --script smb-enum-shares $IP_Host > $Output_file 
       ;;
    
    18) # Scan for SNMP Information
            nmap --script snmp-info $IP_Host > $Output_file
       ;;
  
    19) # Scan for SSH Weak Algorithms
           nmap --script ssh-weak-algorithms $IP_Host > $Output_file
       ;;
    
    20) # Scan for SSL/TLS Vulnerabilities 
          nmap --script ssl-enum-ciphers $IP_Host > $Output_file
       ;;
       
esac
