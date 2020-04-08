dim Maths
dim English
dim Science
dim avgresults
const title="Results"

English = Cint(InputBox("Enter English..."))
Maths = Cint(InputBox("Enter Maths..."))
Science = Cint(InputBox("Enter Science..."))
avgresults = (English + Maths + Science )/300
        MsgBox(FormatPercent(avgresults,3))