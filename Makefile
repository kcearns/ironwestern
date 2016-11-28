droplet:
	docker-machine create --driver digitalocean --digitalocean-access-token $(DO_TOKEN) $(NAME)

build: 
	./scripts/build.sh