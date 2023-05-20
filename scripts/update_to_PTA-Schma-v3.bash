#!/bin/bash
for file in ../../pta_data/data/**/**/pta*.xml
do
  echo Bearbeite "$file"
  java -jar ../../pta_collator/vendor/saxon9he.jar -xsl:update_to_PTA-Schema-v3.xsl -s:"$file" -o:"$file"_temp -strip:all
  ~/bin/nodepretty.sh "$file"_temp "$file"_clean
  cp "$file"_clean "$file"
  rm "$file"_temp
  rm "$file"_clean
done
