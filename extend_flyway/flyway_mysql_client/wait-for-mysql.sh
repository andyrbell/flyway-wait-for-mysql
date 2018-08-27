#!/bin/bash
# wait-for-mysql.sh

set -e

host="$1"
shift
cmd="$@"

until MYSQL_PWD=$MYSQL_ROOT_PASSWORD /usr/bin/mysql --host="$host" --user="root" --execute "SHOW DATABASES;"; do
  >&2 echo "MySQL is unavailable - sleeping"
  sleep 1
done

>&2 echo "MySQL is up - executing command"
exec $cmd
