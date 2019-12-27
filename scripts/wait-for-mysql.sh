while ! docker exec mysql mysqladmin --user=root --password='' --host "127.0.0.1" ping --silent &> /dev/null ; do
    echo "Waiting for database connection..."
    sleep 2
done