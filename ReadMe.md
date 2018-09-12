Isogeo - Admin documentation
============

[![CircleCI](https://circleci.com/gh/isogeo/doc-isogeo-help.svg?style=svg)](https://circleci.com/gh/isogeo/doc-isogeo-help)

# General information

Isogeo Help is the project used to generate the online help for the Isogeo administration platform.

## Continuous integration

The project is tested, built and served on CircleCI: https://circleci.com/gh/isogeo/doc-isogeo-help.

As specified in the CircleCI configuration (see: [.circleci/config.yml](https://github.com/isogeo/doc-isogeo-help/blob/master/.circleci/config.yml)):

- each commit triggers a deploy on QA (http://help.qa.isogeo.com/ = https://qaisogeohelp.z28.web.core.windows.net/)
- each tagged commit triggers a deploy on PROD - (http://help.isogeo.com/ = https://prodisogeohelp.z28.web.core.windows.net/)

It pushes built static website on a Static Website hosted on Azure Storage (GPv2). For more details on this kind of product, refer to these resources:

- [Blog: Static website hosting for Azure Storage now in public preview](https://azure.microsoft.com/en-us/blog/azure-storage-static-web-hosting-public-preview/)
- [Official documentation: Static website hosting in Azure Storage](https://docs.microsoft.com/fr-fr/azure/storage/blobs/storage-blob-static-website)

To upload built result, [rclone](https://rclone.org/azureblob/) is preferred to azure-cli because of more efficient and flexible. It's installed and used through go context in CircleCI. It needs some environment variables corresponding to the storage account keys and set in the [CircleCI project settings](https://circleci.com/gh/isogeo/doc-isogeo-help/edit#env-vars).

----

## Local build

Git clone this repository then:

```powershell
yarn
cd ./Help
gitbook install
gitbook serve
```

----

## Docker

First of all: build it.

```powershell
docker build --rm -f Dockerfile -t isogeo/gitbook-builder:latest .
```

### Serve as a website

```powershell
docker run --name isogeo-help -v $PWD/Help:/srv/gitbook --rm -it -d -p 4567:4567 isogeo/gitbook-builder:latest
# alternativately, you can use the live reload server
docker run --name isogeo-help -v $PWD/Help:/srv/gitbook --rm -it -d -p 4567:4567 -p 35729:35729 isogeo/gitbook-builder:latest
```

Then, open your favorite browser to http://localhost:4567.

To stop it : ```docker stop isogeo-help```

### Build static website

```powershell
docker run --rm -v $PWD/Help:/srv/gitbook -v $PWD/dist:/srv/html isogeo/gitbook-builder gitbook build . /srv/html
```

### Push to Azure private container

Using Azure CLI ([see: official doc](https://docs.microsoft.com/en-us/azure/container-registry/container-registry-get-started-docker-cli)).


```bash
# login
az login -u firstname.lastname@isogeo.fr -p myGre4atPachweurd
# tag it
docker build --rm -f Dockerfile -t isogeo.azurecr.io/gitbook-builder:latest .
# push it
docker push isogeo.azurecr.io/gitbook-builder:latest
# check it
az acr repository list --name isogeo
```

----

# Related resources

- [GitBook official website](https://www.gitbook.com)
