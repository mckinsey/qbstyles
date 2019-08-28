clean:
	rm -rf build dist pip-wheel-metadata
	find . -regex ".*/__pycache__" -exec rm -rf {} +
	find . -regex ".*\.egg-info" -exec rm -rf {} +

install:
	pip install .

package: clean
	python setup.py sdist bdist_wheel

publish: package
	python -m pip install twine -U
	python -m twine upload dist/*
