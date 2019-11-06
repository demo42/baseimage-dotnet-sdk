#becomes: ${REGISTRY_NAME}baseimages/microsoft/dotnet/sdk:linux-2.1
FROM mcr.microsoft.com/dotnet/sdk:2.1-sdk

# Values that pass tests Good | Great
# Anything else - fail!!!
ENV SOMETHING_UNEXPECTED=Good
