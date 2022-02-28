./vault.sh dec &> /dev/null

ansible-lint $(find $(pwd) -name '*.yml')

./vault.sh enc &> /dev/null