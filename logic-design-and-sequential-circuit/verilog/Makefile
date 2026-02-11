.PHONY: run

run:
	@if [ -z "$(filter-out $@,$(MAKECMDGOALS))" ]; then \
		echo "Usage: make run <WEEK>"; \
		exit 1; \
	fi
	@WEEK=$(filter-out $@,$(MAKECMDGOALS)); \
	mkdir -p ./out/$$WEEK ./$$WEEK/results; \
	for tb in ./$$WEEK/tb/*.sv; do \
		TB=$$(basename $$tb .sv); \
		echo "=== Running $$TB ==="; \
		iverilog -g2012 -o ./out/$$WEEK/$$TB.vvp ./$$WEEK/src/*.sv $$tb && \
		vvp ./out/$$WEEK/$$TB.vvp | tee ./$$WEEK/results/$$TB.txt; \
	done

%:
	@: