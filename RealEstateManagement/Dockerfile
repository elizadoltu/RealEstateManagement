# Use the official Microsoft .NET SDK as the build image
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build

# Set the working directory to /src
WORKDIR /src

# Copy the .csproj files and restore any dependencies (via dotnet restore)
COPY ["RealEstateManagement/RealEstateManagement.csproj", "RealEstateManagement/"]
COPY ["Application/Application.csproj", "Application/"]
COPY ["Domain/Domain.csproj", "Domain/"]
COPY ["Infrastructure/Infrastructure.csproj", "Infrastructure/"]

# Restore NuGet packages
RUN dotnet restore "RealEstateManagement/RealEstateManagement.csproj"

# Copy the entire repository into the container
COPY . .

# Set the working directory to the RealEstateManagement project folder
WORKDIR "/src/RealEstateManagement"

# Build the application
RUN dotnet build "RealEstateManagement.csproj" -c Release -o /app/build

# Publish the application
RUN dotnet publish "RealEstateManagement.csproj" -c Release -o /app/publish

# Set the base image for the runtime environment
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 80

# Copy the published files from the build stage
COPY --from=build /app/publish .

# Set the entry point for the application
ENTRYPOINT ["dotnet", "RealEstateManagement.dll"]
