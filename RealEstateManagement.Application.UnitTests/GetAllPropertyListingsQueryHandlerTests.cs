using Application.DTOs;
using Application.Use_Cases.Queries;
using Application.Use_Cases.QueryHandlers;
using AutoMapper;
using Domain.Entities;
using Domain.Repositories;
using FluentAssertions;
using NSubstitute;

namespace RealEstateManagement.Application.UnitTests
{
    public class GetAllPropertyListingsQueryHandlerTests
    {
        private readonly IPropertyListingRepository repository;
        private readonly IMapper mapper;

        public GetAllPropertyListingsQueryHandlerTests()
        {
            repository = Substitute.For<IPropertyListingRepository>();
            mapper = Substitute.For<IMapper>();
        }

        [Fact]
        public async Task Given_GetAllPropertyListingsQueryHandler_When_HandleIsCalled_Then_AListOfPropertyListingsShouldBeReturned()
        {
            // Arrange
            List<PropertyListing> propertyListings = GeneratePropertyListings();
            repository.GetAllListingsAsync().Returns(propertyListings);
            var query = new GetAllPropertyListingQuery();
            GeneratePropertyListingsDto(propertyListings);

            // Act
            var handler = new GetAllPropertyListingQueryHandler(mapper, repository);
            var result = await handler.Handle(query, CancellationToken.None);

            // Assert
            result.Should().NotBeNullOrEmpty(); // This test should pass
            result.Count().Should().Be(2); // This test should pass
        }

        [Fact]
        public async Task Given_GetAllPropertyListingsQueryHandler_When_HandleIsCalled_Then_EmptyListShouldBeReturned()
        {
            // Arrange
            repository.GetAllListingsAsync().Returns(new List<PropertyListing>());
            var query = new GetAllPropertyListingQuery();

            // Act
            var handler = new GetAllPropertyListingQueryHandler(mapper, repository);
            var result = await handler.Handle(query, CancellationToken.None);

            // Assert
            result.Should().BeEmpty(); // This test should pass
        }

        [Fact]
        public async Task Given_GetAllPropertyListingsQueryHandler_When_HandleIsCalled_Then_ExceptionShouldBeThrown()
        {
            // Arrange
            repository.GetAllListingsAsync().Returns(Task.FromException<IEnumerable<PropertyListing>>(new Exception("Database error")));
            var query = new GetAllPropertyListingQuery();

            // Act
            var handler = new GetAllPropertyListingQueryHandler(mapper, repository);
            Func<Task> act = async () => await handler.Handle(query, CancellationToken.None);

            // Assert
            await act.Should().ThrowAsync<Exception>().WithMessage("Database error");
        }

        [Fact]
        public async Task Given_GetAllPropertyListingsQueryHandler_When_HandleIsCalled_Then_IncorrectNumberOfListingsShouldBeReturned()
        {
            // Arrange
            List<PropertyListing> propertyListings = GeneratePropertyListings();
            repository.GetAllListingsAsync().Returns(propertyListings);
            var query = new GetAllPropertyListingQuery();
            GeneratePropertyListingsDto(propertyListings);

            // Act
            var handler = new GetAllPropertyListingQueryHandler(mapper, repository);
            var result = await handler.Handle(query, CancellationToken.None);

            // Assert
            result.Should().NotBeNull();
            result.Count().Should().NotBe(3); // This test is designed to fail
        }

        private void GeneratePropertyListingsDto(List<PropertyListing> propertyListings)
        {
            mapper.Map<List<PropertyListingDTO>>(propertyListings).Returns(new List<PropertyListingDTO>
            {
                new PropertyListingDTO
                {
                    PropertyId = propertyListings[0].PropertyId,
                    Address = propertyListings[0].Address,
                    Type = propertyListings[0].Type,
                    Price = propertyListings[0].Price,
                    SquareFootage = propertyListings[0].SquareFootage,
                    NumberOfBedrooms = propertyListings[0].NumberOfBedrooms,
                    NumberOfBathrooms = propertyListings[0].NumberOfBathrooms,
                    Description = propertyListings[0].Description,
                    Status = propertyListings[0].Status,
                    ListingDate = propertyListings[0].ListingDate,
                    ImageURLs = propertyListings[0].ImageURLs,
                    UserID = propertyListings[0].UserID
                },
                new PropertyListingDTO
                {
                    PropertyId = propertyListings[1].PropertyId,
                    Address = propertyListings[1].Address,
                    Type = propertyListings[1].Type,
                    Price = propertyListings[1].Price,
                    SquareFootage = propertyListings[1].SquareFootage,
                    NumberOfBedrooms = propertyListings[1].NumberOfBedrooms,
                    NumberOfBathrooms = propertyListings[1].NumberOfBathrooms,
                    Description = propertyListings[1].Description,
                    Status = propertyListings[1].Status,
                    ListingDate = propertyListings[1].ListingDate,
                    ImageURLs = propertyListings[1].ImageURLs,
                    UserID = propertyListings[1].UserID
                }
            });
        }

        private List<PropertyListing> GeneratePropertyListings()
        {
            return new List<PropertyListing>
            {
                new PropertyListing
                {
                    PropertyId = new Guid("9539ec12-2c87-472a-9752-20889cba0f48"),
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
                    UserID = new Guid("dd5b1c43-e9dd-40cf-82e1-e6b17f96f152")
                },
                new PropertyListing
                {
                    PropertyId = new Guid("d7a597df-4cef-4754-967f-296e74e1ce70"),
                    Address = "456 Elm St",
                    Type = "Condo",
                    Price = 200000,
                    SquareFootage = 1000,
                    NumberOfBedrooms = 2,
                    NumberOfBathrooms = 1,
                    Description = "Description 2",
                    Status = "Available",
                    ListingDate = DateTime.Now,
                    ImageURLs = "http://example.com/image2.jpg",
                    UserID = new Guid("7b2ed928-a903-47f5-8bcd-c93216154f29")
                }
            };
        }
    }
}
