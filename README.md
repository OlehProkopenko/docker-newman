# Newman
Image for running newman in GitLab-CI environments
### Versions:
  Alpine: 3.8   
  Node: 11.5  
  Newman: 4.2.3  
  Newman-reporter-html: 1.0.2  
  Newman-reporter-htmlextra: 1.4.0
### Usage Examples
#### gitlab-ci.yml:
```
  testing:
    stage: test
    image: oipilot/newman
    script:
      - newman run my.postman_collection.json -e my.postman_environment.json -r htmlextra --color on
    artifacts:
      paths:
      - newman/
```
#### local:
```terminal
docker run -t --rm -v ${PWD}:/etc/newman oipilot/newman newman run my.postman_collection.json -e my.postman_environment.json -r htmlextra --color on
```
### Links:
[Newman-reporter-htmlextra](https://www.npmjs.com/package/newman-reporter-htmlextra)  
[Newman-reporter-html](https://github.com/postmanlabs/newman-reporter-html)  
[Newman](https://github.com/postmanlabs/newman)  
