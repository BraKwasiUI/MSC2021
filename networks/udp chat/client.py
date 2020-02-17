# -*- coding: utf-8 -*-
"""
Created on Mon Feb 17 01:43:23 2020

@author: KWASI
"""

import socket
UDP_IP_ADDRESS = "192.168.149.1"
UDP_PORT_NO = 1234

Message = "Hello, Server".encode()

clientSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

while True:
    msg = str(input("Enter your message: "))
    msg = msg.encode()
    clientSock.sendto(msg, (UDP_IP_ADDRESS, UDP_PORT_NO))
