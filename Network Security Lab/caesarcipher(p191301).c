#include <stdio.h>

int main()
{
	char plainT[100];
	int secretKey,i,asciiValue,choice;
	int dsecretKey;
    char c;
    printf("Enter a message: ");
    scanf("%s", &plainT); 
	printf("Enter Secret Key ");
    scanf("%d", &secretKey); 
     
	 
    
 for(i=0;plainT[i]!='\0';i++){
 
 c=plainT[i];
 //this is for working with lower cases
 if (c>='a'&&c<='z'){
 	asciiValue = c;
 	int ci=((asciiValue-97)+secretKey)%26+97;
 	c=ci;
 	plainT[i]=c;
 }
  
 //this is for working with Upper cases
 else  if (c>='A'&&c<='Z'){
 	asciiValue = c;
 	int ci=((asciiValue-65)+secretKey)%26+65;
 	c=ci;
 	plainT[i]=c;
 }
  
}
 
printf("Encrypted Message is %s",plainT);


printf("\n\nDo you want to decrypt the message?");    
printf("\nEnter 1 for yes and 0 for No: ");    
scanf("%d",&choice);

switch(choice){
	case 1:
		
		printf("\nEnter Decryption key ");
		scanf("%d", &dsecretKey);
		for(i=0;plainT[i]!='\0';i++){
 
		 c=plainT[i];
		 //this is for working with lower cases
		 if (c>='a'&&c<='z'){
		 	asciiValue = c;
		 	int ci=((asciiValue-97)-dsecretKey)%26+97;
		 	c=ci;
		 	plainT[i]=c;
		 }
		  
		 //this is for working with Upper cases
		 else  if (c>='A'&&c<='Z'){
		 	asciiValue = c;
		 	int ci=((asciiValue-65)-dsecretKey)%26+65;
		 	c=ci;
		 	plainT[i]=c;
		 }
		  
		}
		 
		printf("Decrypted Message is %s",plainT);
		break;
	case 0:
		printf("\nOkay No decryption needed ");
		break;	
	default:
		printf("Bad input");
		
}



	
	
	
	
	
	return 0;
    
}
