# Newman

Image for running newman in (gitlab)-ci environments


### Versions:

  Alpine: 3.8.2

  Node: v11.5.0

  Newman: 4.2.3


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
