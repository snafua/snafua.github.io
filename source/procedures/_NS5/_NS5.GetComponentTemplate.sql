create procedure "_NS5"."GetComponentTemplate"( in @ComponentTypeId integer ) 
result( "DiagnosticTemplateId" integer,"VibStandardDiagnosisId" integer,"VibStandardDiagnosisText" char(80),"ShaftOrientation" char(3),"ApplicableComponents" long binary,"SeverityFactor" integer,"YLOGS" long binary,"OLOGS" long binary,"NLOGS" long binary,"XLOGS" long binary,"MLOGS" long binary,"ALOGS" long binary,"SLOGS" long binary,"LLOGS" long binary,"RuleForm" long binary,"Rules" long binary,"RuleLogicCodes" long binary ) 
begin
  call "NS5"."GetComponentTemplate"(@ComponentTypeId)
end