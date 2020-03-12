dim name
Const Raj="President"
Const Ram="Sr. Vice President"
Const Kumar="Vice Presdent"
Const Sri= "Manager"
Const title="Results"

name=InputBox("Enter Your last Name")


Select Case name
case "Raj"
    MsgBox  " Raj is "& Raj ,0,title
    
case "Ram"
    MsgBox  " Ram is "& Raj ,0,title
    
case "Kumar"
    MsgBox  " Kumar is "& Kumar ,0,title

case "Sri"
    MsgBox  " Sri is "& Sri ,0,title
    
case Else 
    MsgBox  " Hello You are not part of the managemengt Team ",0,title
    
End Select