.PHONY: qa quality pylint

quality:
	isort -c sopel_wikimedia
	flake8 sopel_wikimedia
	mypy sopel_wikimedia

pylint:
	pylint sopel_wikimedia

qa: quality pylint

.PHONY: develop build

develop:
	python -m pip install -U pip
	python -m pip install -U requirements.txt
	python -m pip install -e .

build:
	rm -rf build/ dist/
	python -m build --sdist --wheel --outdir dist/ .
