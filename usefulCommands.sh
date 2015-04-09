#  Compress a given json by eating spaces/tabs/newlines
sed -r ':a;N;$!ba;s/( |\t|\n)//g' <input.txt  >output.txt


#  Compress a given json by eating newlines
sed -r ':a;N;$!ba;s/(\n)//g' <input.txt  >output.txt
