all: mini

dalle-playground:
	git clone https://github.com/saharmor/dalle-playground.git
	pip install -r dalle-playground/backend/requirements.txt
	(cd interface && npm install && npm run build)

run-backend: dalle-playground
	python dalle-playground/backend/app.py 8000 $dalle_model	

mini:
	$(MAKE) dalle_model=Mini run-backend

mega:
	$(MAKE) dalle_model=Mega run-backend

mega-full:
	$(MAKE) dalle_model=Mega_full run-backend

frontend:
	(cd interface && npm run start)

.PHONY: run-backend mini mega mega-full
