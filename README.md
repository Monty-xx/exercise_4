# Django Polls Application

A Django-based polls application created following the official Django tutorial with personal customizations.

## Features
- View latest questions on the index page
- Click a question to see details and vote
- Results page shows current vote counts
- Custom styling:
  - Background color
  - Accent-colored radio buttons
  - Styled "Vote" button
- Includes a custom question for demonstration

## Admin Credentials
- Username: Monique
- Password: cleverfox123

## How to Run
1. Clone the Repository
```bash
git clone https://github.com/Monty-xx/django-polls-app.git
   cd django-polls-app
```
2. Install Dependencies
```bash
pip install -r requirements.txt
```
3. Apply Migrations
```bash
python manage.py migrate
```
4. Run the Development Server
```bash
python manage.py runserver
```
5. Visit the app at http://127.0.0.1:8000/polls/
