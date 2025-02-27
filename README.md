Dja project


Activate environment variables:

```
source ~/dja-env
```

Generate favicon:

```
./favicon/generate.sh
# NOTE: generated favicon files have dependency to DJANGO_STATIC_URL.
```

Test favicon:
```
npx realfavicon check -s cli 8000
```

Run dja:
```
python -m venv venv
source venv/bin/activate
pip install -r requirements-dev.txt

python manage.py makemigrations
python manage.py migrate

python manage.py runserver 0.0.0.0:8000
python manage.py runserver localhost:8000
```

