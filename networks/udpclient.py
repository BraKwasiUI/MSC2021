
import socket
UDP_IP_ADDRESS = "10.30.42.194"
UDP_PORT_NO = 1234
Message = "Hello, Server".encode()

clientSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)


num1 =input ('Enter First Number: ')
num1 = input ('Enter Second Number: ')


clientSock.sendto(num1.encode(),(UDP_IP_ADDRESS, UDP_PORT_NO))
clientSock.sendto(num1.encode(),(UDP_IP_ADDRESS, UDP_PORT_NO))



answer,serverAddress = clientSock.recvfrom(1234)
print ('your result: ', answer)