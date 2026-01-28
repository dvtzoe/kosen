.PHONY: run

run:
	@if [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "Usage: make run <WEEK>"; \
		exit 1; \
	fi
	@WEEK=$(filter-out $@,$(MAKECMDGOALS)); \
	mkdir -p ./out/$$WEEK && \
	iverilog -g2012 -o ./out/$$WEEK/a.vvp ./$$WEEK/src/*.sv ./$$WEEK/tb/*.sv && \
	vvp ./out/$$WEEK/a.vvp

%:
	@: