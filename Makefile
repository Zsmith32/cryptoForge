test: venv/is_installed
	echo "test"

venv: 
	python3 -m venv venv

venv/is_installed: requirements.txt | venv
	. venv/bin/activate; pip install -Ur requirements.txt
	touch venv/is_installed

clean:
	rm -rf venv
	find -iname "*.pyc" -delete
