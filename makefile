all::

.PHONY: compile clean
compile:
	protoc --proto_path proto/ ./proto/*.proto --php_out src/ --python_out src/
clean:
	find src ! -name '.gitignore' -type f -exec rm {} +
	find src ! -name 'src' -type d -exec rm -r {} +
