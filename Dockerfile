#becomes: ${REGISTRY_NAME}baseimages/microsoft/dotnet-sdk:linux-2.1
ARG REGISTRY_NAME
FROM ${REGISTRY_NAME}microsoft/dotnet:2.1-sdk

# Values that pass tests Good | Wonderful
# Anything else - fail!!!
ENV SOMETHING_UNEXPECTED=WeeDiddleDiddle
