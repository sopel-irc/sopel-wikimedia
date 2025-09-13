.PHONY: qa quality pylint

quality:
	isort sopel_wikimedia
	flake8 sopel_wikimedia
	mypy sopel_wikimedia

pylint:
	pylint sopel_wikimedia

qa: quality pylint

.PHONY: develop build

develop:
	pip install -r requirements.txt

build:
	rm -rf build/ dist/
	python -m build --sdist --wheel --outdir dist/ .
