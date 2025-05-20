#!/bin/bash
for file in ../../pta_data/data/pta9999/**/pta*.xml
do
  echo Bearbeite "$file"
  java -jar ~/bin/saxon9he.jar -xsl:add_change.xsl -s:"$file" -o:"$file"_temp -strip:all
  cp "$file"_temp "$file"
  rm "$file"_temp
done
