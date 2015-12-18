default:
	@echo "Specify target to run"

rm:
	docker-compose rm

master:
	docker-compose up master

master-ssh:
	docker exec -it puppetnew_master_1 /bin/bash

r10k:
	docker exec puppetnew_master_1 r10k deploy environment -p -v

agent1:
	# docker-compose up agent1
	docker-compose run agent1 /bin/bash

clean-cache:
	rm -rf cache/*