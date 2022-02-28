count=0

for value in 'credential.yml' 'all*' '*auth.j2'
do
	for file in $(find $(pwd) -name $value)
	do
		if [ "$1" == "enc" ]
		then
			if grep -q ANSIBLE_VAULT $file 
			then
				continue
			fi	
		fi

		if [ "$1" == "dec" ]
		then
			if ! grep -q ANSIBLE_VAULT $file 
			then
				continue
			fi
		fi

		echo $file
		ansible-vault "$1"rypt $file --vault-password-file ~/.ansible_pass.txt
		count+=1
	done
done

if [ $count == 0 ]
then
	echo "*******************************"
	echo "All files are already $1rypt"
	echo "*******************************"
fi