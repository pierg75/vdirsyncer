install-test:
	sh build.sh install_tests

test:
	sh build.sh tests

install-style:
	pip install flake8 flake8-import-order sphinx
	pip install -e .
	
style:
	flake8
	! grep -ri syncroniz */*
	sphinx-build -W -b html ./docs/ ./docs/_build/html/

install-docs:
	pip install sphinx sphinx_rtd_theme
	pip install -e .

docs:
	cd docs
	make html

linkcheck:
	sphinx-build -W -b linkcheck ./docs/ ./docs/_build/linkcheck/
