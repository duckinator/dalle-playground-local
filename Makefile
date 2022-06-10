all: mini

setup:
	(test -d dalle-playground || git clone https://github.com/saharmor/dalle-playground.git)
	pip install -r dalle-playground/backend/requirements.txt
	(cd dalle-playground/interface && npm install && npm run build)

run-backend: dalle-playground
	python dalle-playground/backend/app.py 8000 $dalle_model	

mini: dalle-playground
	$(MAKE) dalle_model=Mini run-backend

mega: dalle-playground
	$(MAKE) dalle_model=Mega run-backend

mega-full: dalle-playground
	$(MAKE) dalle_model=Mega_full run-backend

frontend: dalle-playground
	(cd interface && npm run start)

clean:
	rm -rf dalle-playground

.PHONY: setup run-backend mini mega mega-full
