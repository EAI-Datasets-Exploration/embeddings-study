.PHONY: install
install:
	python3 -m pip install .

.PHONY: dev_install
dev_install:
	python3 -m pip install '.[dev,test]'

.PHONY: lint
lint:
	python3 -m pylint embeddings_study/

.PHONY: format
format:
	python3 -m black embeddings_study/

.PHONY: test
test:
	python3 -m pytest test/