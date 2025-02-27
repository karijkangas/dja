Dja project


```
source ~/dja-env

# note: favicon-settings.json has dependency to STATIC_URL
npx realfavicon generate ./favicon/favicon.svg ./favicon/favicon-settings.json ./favicon/output-data.json ./dja/static/dja/

npx realfavicon check -s cli 8000

python -m venv venv
source venv/bin/activate
pip install -r requirements-dev.txt

python manage.py makemigrations
python manage.py migrate

python manage.py runserver 0.0.0.0:8000
python manage.py runserver localhost:8000
```

