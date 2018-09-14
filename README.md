# Newman

Image for running newman in (gitlab)-ci environments


### Versions:

  Alpine: 3.8.1

  Node: v10.10.0

  Newman: 4.1.0


### Usage Examples


#### gitlab-ci.yml:

```
  testing:
    stage: test
    image: oipilot/newman
    script:
      - newman run my.postman_collection.json -e my.postman_environment.json -r cli,html,json
    artifacts:
      paths:
      - newman/

```


#### local:

```terminal
docker run -t --rm -v ${PWD}:/etc/newman oipilot/newman newman run my.postman_collection.json -e my.postman_environment.json -r cli,html,json
```
