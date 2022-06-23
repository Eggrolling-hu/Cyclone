build:
	docker build -t Shawn/kokomi .

save:
	docker save -o kokomi.zip Shawn/kokomi

run:
	docker run -p 6666:6666 Shawn/kokomi

.PHONY: build save