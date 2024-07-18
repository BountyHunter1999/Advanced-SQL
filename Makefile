run:
	-docker rm -f adv-sql
	docker run --rm --name adv-sql -d -v $$(pwd)/docker-entrypoint-initdb.d:/docker-entrypoint-initdb.d/ \
		-e POSTGRES_PASSWORD=atom \
		-e POSTGRES_USER=pluto \
		-e POSTGRES_DB=main \
		-p 5432:5432 \
		postgres:12.19-alpine3.20
	
	sleep 5
	docker exec -it adv-sql psql -U pluto -d main


exec:
	docker exec -it adv-sql psql -U pluto -d main
