# Building the dotnet sdk
The repository defines a reference to the public version of the dotnet sdk. 
The purpose of this reference enables demos of base image updates without having to change the public image
It also represents what most enterprises do, keeping their staged version of base images. Just as they control rollouts of windows updates, enterprises prefer more control and stability. 

## build/push w/Docker

```powsershell
$Env:REGISTRY_NAME="demo42.azurecr.io"
docker build -t $Env:REGISTRY_NAME/baseimages/microsoft/dotnet/sdk:linux-2.1  .
docker push $Env:REGISTRY_NAME/baseimages/microsoft/dotnet/sdk:linux-2.1
```
```sh
REGISTRY_NAME=demo42.azurecr.io
docker build -t ${REGISTRY_NAME}baseimages/microsoft/dotnet/sdk:linux-2.1  .
```

## build/push with ACR Build

### Manual Run
```sh
az acr build -t baseimages/microsoft/dotnet/sdk:linux-2.1  .
```

### Maintained as a Task

```sh
az acr task create \
  -n baseimage-dotnet-sdk \
  --context https://github.com/demo42/baseimage-dotnet-sdk.git \
  -t baseimages/microsoft/dotnet/sdk:2.1 \
  -f Dockerfile \
  --git-access-token $(az keyvault secret show \
                         --vault-name $AKV_NAME \
                         --name $GIT_TOKEN_NAME \
                         --query value -o tsv) \
  --registry $ACR_NAME 
```

### Manually trigger the task, as triggers are intentionally disabled

```sh
az acr task run -n baseimage-dotnet-sdk
```
