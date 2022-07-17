usage:
	@echo Usage:
	@echo "make push-<php_tag>"
	@echo Tags:
	@echo - 8.0

push-8.0:
	@echo Pushing to git...
	git add .
	git commit -m "Upgrade"
	git push origin :refs/tags/8.0
	git tag -fa 8.0 -m "php 8.0"
	git push origin master --tags