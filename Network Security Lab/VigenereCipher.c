#include<stdio.h>
#include<string.h>

int main(){

char plaintext[100],secretkey[100];
int i,j,plength,klength,choice;


//input plaintext
printf("Enter Plain Text for Encryption: ");
scanf("%s",&plaintext);
//get the lenght of the text
plength = strlen(plaintext);
char CipherText[plength];

//input key
printf("Enter Secret key: ");
scanf("%s",&secretkey);
//get the lenght of the text
klength = strlen(secretkey);
char keyphrase[plength];
char dkeyphrase[plength];
char decrypted[plength];


//generate the keyphrase
for (i=0,j=0; i<plength; i++,j++ ){
	
	if(j == klength)
            j = 0;
 
        keyphrase[i] = secretkey[j];
	
	
}
//assign key phrase like this to signify the end of the string 
keyphrase[i]='\0';

//printf("New phrase: %s",keyphrase);

//Encryption
for (i=0; i<plength; i++){
	//iterate through plaintext and keyphrase add and find modulo and add the asci value to convert result into asci 
	CipherText[i] = ((plaintext[i] + keyphrase[i]) % 26) + 'A';
}
CipherText[i]='\0';
printf("Encrypted message: %s",CipherText);




printf("\n\nDo you want to decrypt the message?");    
printf("\nEnter 1 for yes and 0 for No: ");    
scanf("%d",&choice);

switch(choice){
	case 1:
		printf("Enter Secret key: ");
		scanf("%s",&secretkey);
		
			//generate the decryption keyphrase
			//security feature to ensure you have the correct key entered 
	for (i=0,j=0; i<plength; i++,j++ ){
		
		if(j == klength)
	            j = 0;
	 
	        dkeyphrase[i] = secretkey[j];	
	}
	//assign key phrase like this to signify the end of the string 
	dkeyphrase[i]='\0';
		

	  for(i = 0; i < plength; ++i){
        decrypted[i] = (((CipherText[i] - dkeyphrase[i]) + 26) % 26) + 'A';
	  }
	   decrypted[i]='\0';
	 
		printf("Decrypted Message is %s",decrypted);
		break;
		
		
		case 0:
		printf("\nOkay No decryption needed ");
		break;	
		default:
		printf("Bad input");

}


}




 

