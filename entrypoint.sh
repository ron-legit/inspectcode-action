#!/bin/sh
dotnet restore 
/resharper/inspectcode.sh $1 -o=report.xml
if grep -q "<Issues />" report.xml; then
   echo "No errors or warnings"
else
   echo "Resharper show errors or warnings"
   exit 1
fi
