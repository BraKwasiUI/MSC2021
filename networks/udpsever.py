import socket
# Here we define the UDP IP address as well as the port number that we have 
# already defined in the client python script.
UDP_IP_ADDRESS = "10.30.42.194"
UDP_PORT_NO = 1234

# declare our serverSocket upon which
# we will be listeni
serverSock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
# One difference is tng for UDP messageshat we will have to bind our declared IP address
# and port number to our newly declared serverSock
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
