using Application.Use_Cases.Commands;
using Application.Use_Cases.CommandHandlers;
using AutoMapper;
using Domain.Entities;
using Domain.Repositories;
using FluentAssertions;
using NSubstitute;
using Xunit;

namespace RealEstateManagement.Application.UnitTests
{
    public class CreatePropertyListingCommandHandlerTests
    {
        private readonly IPropertyListingRepository repository;
        private readonly IMapper mapper;

        public CreatePropertyListingCommandHandlerTests()
        {
            repository = Substitute.For<IPropertyListingRepository>();
            mapper = Substitute.For<IMapper>();
        }

        [Fact]
        public async Task Given_CreatePropertyListingCommandHandler_When_HandleIsCalled_Then_PropertyListingIdShouldBeReturned()
        {
            // Arrange
            var command = GenerateCreatePropertyListingCommand();
            var propertyListing = GeneratePropertyListing(command);
            var propertyId = Guid.NewGuid();
            mapper.Map<PropertyListing>(command).Returns(propertyListing);
            repository.AddListingAsync(propertyListing).Returns(propertyId);

            // Act
            var handler = new CreatePropertyListingCommandHandler(repository, mapper);
            var result = await handler.Handle(command, CancellationToken.None);

            // Assert
            result.Should().Be(propertyId);
        }

        [Fact]
        public async Task Given_CreatePropertyListingCommandHandler_When_HandleIsCalled_Then_ExceptionShouldBeThrown()
        {
            // Arrange
            var command = GenerateCreatePropertyListingCommand();
            var propertyListing = GeneratePropertyListing(command);
            mapper.Map<PropertyListing>(command).Returns(propertyListing);
            repository.AddListingAsync(propertyListing).Returns(Task.FromException<Guid>(new Exception("Database error")));

            // Act
            var handler = new CreatePropertyListingCommandHandler(repository, mapper);
            Func<Task> act = async () => await handler.Handle(command, CancellationToken.None);

            // Assert
            await act.Should().ThrowAsync<Exception>().WithMessage("Database error");
        }

        private CreatePropertyListingCommand GenerateCreatePropertyListingCommand()
        {
            return new CreatePropertyListingCommand
            {
                Address = "123 Main St",
                Type = "House",
                Price = 100000,
                SquareFootage = 1500,
                NumberOfBedrooms = 3,
                NumberOfBathrooms = 2,
                Description = "Description 1",
                Status = "Available",
                ListingDate = DateTime.Now,
                ImageURLs = "http://example.com/image1.jpg",
                UserID = Guid.NewGuid()
            };
        }

        private PropertyListing GeneratePropertyListing(CreatePropertyListingCommand command)
        {
            return new PropertyListing
            {
                PropertyId = Guid.NewGuid(),
                Address = command.Address,
                Type = command.Type,
                Price = command.Price,
                SquareFootage = command.SquareFootage,
                NumberOfBedrooms = command.NumberOfBedrooms,
                NumberOfBathrooms = command.NumberOfBathrooms,
                Description = command.Description,
                Status = command.Status,
                ListingDate = command.ListingDate,
                ImageURLs = command.ImageURLs,
                UserID = command.UserID
            };
        }
    }
}
