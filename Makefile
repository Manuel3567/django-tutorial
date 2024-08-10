# Define the Python executable and virtual environment directory
PYTHON = python
VENV_DIR = .venv

# Targets
all: venv install server

venv:
	$(PYTHON) -m venv $(VENV_DIR)

install: venv
	$(VENV_DIR)\Scripts\python.exe -m pip install --upgrade pip
	$(VENV_DIR)\Scripts\python.exe -m pip install -r requirements.txt

server:
	$(VENV_DIR)\Scripts\python.exe manage.py runserver

clean:
	rmdir /s /q $(VENV_DIR)
