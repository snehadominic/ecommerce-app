# Get Base SDK Image from Microsoft, create a working directory 
# and expose port 80 of container
FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base 
WORKDIR /app 
EXPOSE 80 

FROM microsoft/dotnet:2.2-sdk AS build 
WORKDIR /src 

# Copy everything and restore project to resolve dependency 
COPY [".", "eCommerce/"] 
RUN dotnet restore "eCommerce/eCommerce.csproj" 

#Copy csproj file and build
COPY . . 
WORKDIR "/src" 
RUN dotnet build "eCommerce/eCommerce.csproj" -c Release -o /app 

FROM build AS publish 
RUN dotnet publish "eCommerce/eCommerce.csproj" -c Release -o /app

# Generate runtime image
FROM base AS final 
WORKDIR /app 
COPY --from=publish /app . 
ENTRYPOINT ["dotnet", "eCommerce.dll"]