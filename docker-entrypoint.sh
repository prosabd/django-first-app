#!/bin/bash

 # Create database if not exists
mysql -h"$db_host" -P"$db_port" -u"$db_user" -p"$db_password" -e "CREATE DATABASE IF NOT EXISTS $db_name"

# Import SQL file if exists
mysql -h"$db_host" -P"$db_port" -u"$db_user" -p"$db_password" "$db_name" < django.sql

# Generate secret key if not exists in .env
if ! grep -q "^secret_key=" .env; then
    SECRET_KEY=$(python -c "from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())")
    echo "secret_key=$SECRET_KEY" >> .env
fi

# Apply migrations
python manage.py migrate

# Create superuser
python manage.py shell << END
from django.contrib.auth import get_user_model
User = get_user_model()
if not User.objects.filter(username='user-admin').exists():
    User.objects.create_superuser('user-admin', 'admin@example.com', 'user-pwd')
END

# Start server
python manage.py runserver 0.0.0.0:8001
