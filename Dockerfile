#becomes: ${REGISTRY_NAME}baseimages/microsoft/dotnet-sdk:linux-2.1
ARG REGISTRY_NAME
FROM ${REGISTRY_NAME}microsoft/dotnet:2.1-sdk

ENV BACKGROUND_COLOR=Azure
