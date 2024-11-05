using Application.Use_Cases.Commands;
using Application.Use_Cases.CommandHandlers;
using Domain.Entities;
using Domain.Repositories;
using FluentAssertions;
using NSubstitute;
using Xunit;
using MediatR;

namespace RealEstateManagement.Application.UnitTests
{
    public class UpdatePropertyListingCommandHandlerTests
    {
        private readonly IPropertyListingRepository repository;

        public UpdatePropertyListingCommandHandlerTests()
        {
            repository = Substitute.For<IPropertyListingRepository>();
        }

        [Fact]
        public async Task Given_UpdatePropertyListingCommandHandler_When_HandleIsCalled_Then_UnitShouldBeReturned()
        {
            // Arrange
            var command = GenerateUpdatePropertyListingCommand();
            var propertyListing = GeneratePropertyListing(command);
            repository.GetListingByIdAsync(command.PropertyId).Returns(propertyListing);

            // Act
            var handler = new UpdatePropertyListingCommandHandler(repository);
            var result = await handler.Handle(command, CancellationToken.None);

            // Assert
            result.Should().Be(Unit.Value);
        }

        [Fact]
        public async Task Given_UpdatePropertyListingCommandHandler_When_HandleIsCalled_Then_ExceptionShouldBeThrownIfListingNotFound()
        {
            // Arrange
            var command = GenerateUpdatePropertyListingCommand();
            repository.GetListingByIdAsync(command.PropertyId).Returns((PropertyListing)null);

            // Act
            var handler = new UpdatePropertyListingCommandHandler(repository);
            Func<Task> act = async () => await handler.Handle(command, CancellationToken.None);

            // Assert
            await act.Should().ThrowAsync<Exception>().WithMessage($"Property listing with ID {command.PropertyId} not found.");
        }

        [Fact]
        public async Task Given_UpdatePropertyListingCommandHandler_When_HandleIsCalled_Then_ExceptionShouldBeThrownIfRepositoryThrows()
        {
            // Arrange
            var command = GenerateUpdatePropertyListingCommand();
            var propertyListing = GeneratePropertyListing(command);
            repository.GetListingByIdAsync(command.PropertyId).Returns(propertyListing);
            repository.UpdateListingAsync(propertyListing).Returns(Task.FromException(new Exception("Database error")));

            // Act
            var handler = new UpdatePropertyListingCommandHandler(repository);
            Func<Task> act = async () => await handler.Handle(command, CancellationToken.None);

            // Assert
            await act.Should().ThrowAsync<Exception>().WithMessage("Database error");
        }

        private UpdatePropertyListingCommand GenerateUpdatePropertyListingCommand()
        {
            return new UpdatePropertyListingCommand
            {
                PropertyId = Guid.NewGuid(),
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

        private PropertyListing GeneratePropertyListing(UpdatePropertyListingCommand command)
        {
            return new PropertyListing
            {
                PropertyId = command.PropertyId,
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
