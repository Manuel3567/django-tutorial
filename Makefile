# Define the Python executable and virtual environment directory
PYTHON = python
VENV_DIR = .venv

# Targets
all: venv install

venv:
	$(PYTHON) -m venv $(VENV_DIR)

install: venv
	$(VENV_DIR)\Scripts\python.exe -m pip install --upgrade pip
	$(VENV_DIR)\Scripts\python.exe -m pip install -r requirements.txt

clean:
	rmdir /s /q $(VENV_DIR)
