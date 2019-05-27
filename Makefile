USER=ajdyd

start-jupiter-notebook-for-ajdyd:
	docker run -d --name ${USER}-notebook \
		--user $$(id -u ${USER}):$$(id -g ${USER}) \
		-e NB_USER=${USER} -w /home/${USER} \
		-v /home/${USER}:/home/jovyan/ \
		-v /home/${USER}:/home/${USER} \
		--net=host jupyter/datascience-notebook

start-elastic-search-for-ajdyd:
	docker run -d --net=host --name ${USER}-elasticsearch \
		-e "discovery.type=single-node" \
		-e ES_JAVA_OPTS="-Xms3g -Xmx3g" \
		elasticsearch:7.0.0
