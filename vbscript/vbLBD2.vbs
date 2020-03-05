dim GrossMonthlySalary,MonthlyTaxes,MonthlyRetirementContribution,MonthlyNetSalary,gmAfH

const Name="Adam"
const Annualsal=60000.00
const retConti=0.05
const tax=0.2
const health=200

GrossMonthlySalary=Annualsal/12
MsgBox " " & GrossMonthlySalary,0," GrossMonthlySalary" 

gmAfH=GrossMonthlySalary-health
MsgBox " " & gmAfH,0," GrossMonthlySalary After Health C"

MonthlyTaxes=GrossMonthlySalary*tax
gmat=gmAfH-MonthlyTaxes
MsgBox " " & gmat,0," GrossMonthlySalary After Tax"

RetirementContribution=GrossMonthlySalary*retConti

gmarc=gmat-RetirementContribution
MsgBox Name & " receives : " &gmarc & " as monthly salary after all deductions! ",0," Results"


