install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#pytest -vv --cov-report term-missing --cov=app test_*.py
	python -m pytest -vv test_app.py

format:
	black *.py

lint:
	pylint --disable=R,C app.py 

all: install lint test
