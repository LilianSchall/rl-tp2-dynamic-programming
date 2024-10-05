PYTHON=python3.10


testsuite: reformat
	pytest  exercices.py


tiny-testsuite: reformat
	$(PYTHON) tiny-test.py

reformat: 
	black .
	isort .

fast_commit: reformat
	sh pusher.sh

fast_push: fast_commit
	git push
	
