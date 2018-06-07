#becomes: ${REGISTRY_NAME}baseimages/microsoft/dotnet-sdk:linux-2.1
FROM microsoft/dotnet:2.1-sdk

# Values that pass tests Good | Great
# Anything else - fail!!!
ENV SOMETHING_UNEXPECTED=Amazing
