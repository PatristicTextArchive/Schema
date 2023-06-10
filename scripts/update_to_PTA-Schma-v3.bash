#!/bin/bash
for file in ../../pta_data/data/**/**/pta*.xml
do
  echo Bearbeite "$file"
  java -jar ~/bin/saxon9he.jar -xsl:update_to_PTA-Schema-v3.xsl -s:"$file" -o:"$file"_temp -strip:all
  cp "$file"_temp "$file"
  rm "$file"_temp
done
