# -*- coding: utf-8 -*-
"""
Created on Mon Feb 17 01:40:14 2020

@author: KWASI
"""

import socket

UDP_IP_ADDRESS = "192.168.149.1"
UDP_PORT_NO = 1234


serverSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
serverSock.bind((UDP_IP_ADDRESS, UDP_PORT_NO))
print("Server is up and running............................")

while True:
    data,addr = serverSock.recvfrom(1024)
    print ("Message: " + data.decode())