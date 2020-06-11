#include<stdio.h>
#include<math.h>






//function to find distance between  two points
float distance(float x1, float y1,float x2, float y2)
{
   // declare variable
   float d;

   // calculate distance value
   d = ((x2-x1)*(x2-x1))+((y2-y1)*(y2-y1));

   // return result
   return d;
}



float radius(float x1, float y1,float x2, float y2){
return distance(x1, y1,x2,y2);

}

float circum(float x1, float y1,float x2, float y2){
float rad=sqrt(radius(x1, y1,x2,y2));
return 2*3.1416*rad;
}

float area(float x1, float y1,float x2, float y2){
float rad=sqrt(radius(x1, y1,x2,y2));
return 3.1416*rad*rad;

}

int main()
{
     // declare variables
     float x1, y1, x2,y2, result,rad,ar,cir;

     // take input
    printf("Input x1: ");
	scanf("%f", &x1);
	printf("Input y1: ");
	scanf("%f", &y1);
    printf("Input x2: ");
	scanf("%f", &x2);
	printf("Input y2: ");
	scanf("%f", &y2);

     // find distance of two points
     
     result = sqrt(distance(x1, y1,x2,y2));
     rad= sqrt(radius(x1, y1,x2,y2));
     ar=area(x1, y1,x2,y2);
     cir=circum(x1, y1,x2,y2);

     // display result
     printf("\nThe distance between points A(%f %f), B(%f %f ) is ",x1,y1,x2,y2);
     printf("%f",result);
     
      printf("\n\nUsing the same points to find the Radius");
      printf("\nThe distance between points c(%f %f), d(%f %f ) is ",x1,y1,x2,y2);
	  printf("\nRadius is %f\n",rad);
      
      printf("\nCircumference : %f",cir);
      
      printf("\nArea= %f",ar);
     
     
     
     
     
     

     return 0;
}
