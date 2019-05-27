# Development (ajdyd)

You could execute the following statements from within this directory.

Start Jupiter-Notebook:
```
make start-jupiter-notebook-for-ajdyd
```

to determine the jupiter-access-token, examine:
```
docker logs ajdyd-notebook
```


Start Elasticsearch:
```
make start-elastic-search-for-ajdyd
```

To remove the docker containers, simply run:
```
docker rm -f ajdyd-notebook
docker rm -f ajdyd-elasticsearch
```
