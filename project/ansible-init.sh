for server in 'production' 'staging' 'local'
do
	mkdir -p inventory/$server
    touch inventory/$server/$server.ini
    mkdir -p inventory/$server/group_vars
    touch inventory/$server/group_vars/$1.yml
    mkdir -p inventory/$server/host_vars
done

mkdir -p roles/$1
mkdir -p roles/$1/handlers
touch roles/$1/handlers/main.yml
mkdir -p roles/$1/defaults
touch roles/$1/defaults/main.yml
mkdir -p roles/$1/tasks
touch roles/$1/tasks/main.yml
mkdir -p roles/$1/tasks/templates