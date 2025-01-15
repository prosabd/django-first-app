# My First Django Project

This is my first project using Django, aimed at learning the framework and its capabilities. The project is a simple web application that demonstrates the basic features of Django, including models, views, templates, and URL routing.

## Features

- User authentication
- Admin interface
- Database integration with SQLite
- Basic URL routing

## Installation

To set up this project locally, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/prosabd/django-first-app.git
   cd django-first-app
   ```

2. **Create a virtual environment:**
   ```bash
   python -m venv myvenv
   ```

3. **Activate the virtual environment:**
   - On Windows:
     ```bash
     myvenv\Scripts\activate
     ```
   - On macOS/Linux:
     ```bash
     source myvenv/bin/activate
     ```

4. **Install the required packages:**
   ```bash
   pip install -r requirements.txt
   ```

5. **Create environment configuration:**
   Create a `.env` file in the project root with the following variables:
   ```properties
   allowed_hosts=['']
   secret_key=
   debug=True
   db_name=
   db_user=
   db_password=
   db_host=
   db_port=
   ```
   Note: You can also create `.env.local` or `.env.production` for different environments.

   To generate a new secret key, you can use Python:
   ```bash
   python -c "from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())"
   ```
   Copy the generated key and paste it as the value for `secret_key` in your `.env` file.

6. **Run the migrations:**
   ```bash
   python manage.py migrate
   ```

7. **Create a superuser (optional):**
   ```bash
   python manage.py createsuperuser
   ```

8. **Run the development server:**
   ```bash
   python manage.py runserver
   ```

9. **Access the application:**
   Open your web browser and go to `http://127.0.0.1:8000/`.

## Usage

You can access the admin interface at `http://127.0.0.1:8000/admin/` using the superuser credentials you created.


   OR can access on this link : [django-project-pythonanywhere](https://prosa.pythonanywhere.com)

   -- **Comptes test** --

    compte user:
    username: user-test
    password: user-pwd

    compte staff:
    username: user-staff
    password: user-pwd

   ### Creating Posts

    To create a new post, follow these steps:

    1. Go to the admin interface at `/admin` and log in with the staff account credentials
    2. After logging in, navigate back to the main site by going to the root URL `/`.
    3. You should now see an option to create a new post. Click on it to create your post.

    Note: Only authenticated staff users can create new posts. Make sure you're logged in to access this feature.
