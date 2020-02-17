import socket
UDP_IP_ADDRESS = "192.168.149.1"
UDP_PORT_NO = 1234
#my ip=10.30.42.194
serverSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

serverSock.bind((UDP_IP_ADDRESS, UDP_PORT_NO))

print("Sever Up and Running.................................")

num1, clientAddress = serverSock.recvfrom(1234)
print('Number1 received:', num1)

num2, clientAddress = serverSock.recvfrom(1234)
print('Number2 received:', num2)
	
print ('calculating..')
    
answer = int(num1.decode()) + int(num2.decode())
answer = str(answer)
serverSock.sendto(answer.encode(),clientAddress)