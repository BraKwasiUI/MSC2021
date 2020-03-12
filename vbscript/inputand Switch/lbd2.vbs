dim ramage
dim rajage

Const title="Results"

ramage=InputBox("Enter Ram's Age")
rajage=InputBox("Enter Raj's Age")

if Cint(ramage) > Cint(rajage)  Then
    
    MsgBox  " Ram  of " & ramage & " years is older than Raj of "& rajage,0,title
End if


if Cint(rajage) > Cint(ramage)  Then
    
    MsgBox  " Raj  of " & rajage & " years is older than Ram of "& ramage,0,title
End if



if Cint(ramage) = Cint(rajage)  Then
    
    MsgBox  " Ram  of " & ramage & " Is of equal age as raj of "& rajage,0,title
End if