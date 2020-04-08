dim operator
dim num1
dim num2
operator=InputBox("Enter an Operator")
dim results
const title="Calculator"

Select Case operator
case "+"
    MsgBox  " Addition"  ,0,title
    num1=Cint(InputBox("Enter number"))
    num2=Cint(InputBox("Enter number"))
    results=num1+num2
    MsgBox  " Addition of  " & num1 & " to "& num2 &" is "& results,0,title

case "-"
     MsgBox  "Subtraction"  ,0,title
    num1=Cint(InputBox("Enter number"))
    num2=Cint(InputBox("Enter number"))
    results=num1-num2
    MsgBox  " Subtraction of " & num2 & " from " & num1 &" is "& results,0,title
    
case "*"
    MsgBox  "Multiplication"  ,0,title
    num1=Cint(InputBox("Enter number"))
    num2=Cint(InputBox("Enter number"))
    results=num1*num2
    MsgBox  " Multiplication of " & num1 & " and " & num2 &" is "& results,0,title

case "/"
    MsgBox  "Division"  ,0,title
    num1=Cint(InputBox("Enter number"))
    num2=Cint(InputBox("Enter number"))
    results=num1/num2
    MsgBox  " Division of " & num1 & " by " & num2 &" is "& results,0,title
    
case "power"
    MsgBox  "Power"  ,0,title
    num1=Cint(InputBox("Enter number"))
    num2=Cint(InputBox("Enter number"))
    results=num1^num2
    MsgBox  " Division of " & num1 & " by " & num2 &" is "& results,0,title

case Else 
    MsgBox  " Sorry you need to enter an operator ",0,title
    
End Select