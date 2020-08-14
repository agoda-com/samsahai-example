GIT_REPO := https://github.com/agoda-com/samsahai.git

.PHONY: update-example
update:
	rm -rf /tmp/.samsahai
	git clone --depth 1 $(GIT_REPO) /tmp/.samsahai
	rsync -avh --no-perms /tmp/.samsahai/examples/ .
	rm -rf /tmp/.samsahai