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
    public class GetListingByIdQueryHandlerTests
    {
        private readonly IPropertyListingRepository repository;
        private readonly IMapper mapper;

        public GetListingByIdQueryHandlerTests()
        {
            repository = Substitute.For<IPropertyListingRepository>();
            mapper = Substitute.For<IMapper>();
        }

        [Fact]
        public async Task Given_GetListingByIdQueryHandler_When_HandleIsCalled_Then_PropertyListingShouldBeReturned()
        {
            // Arrange
            var propertyId = new Guid("7b2ed928-a903-47f5-8bcd-c93216154f29");
            var propertyListing = GeneratePropertyListing(propertyId);
            repository.GetListingByIdAsync(propertyId).Returns(propertyListing);
            var query = new GetListingByIdQuery { PropertyId = propertyId };
            var propertyListingDto = GeneratePropertyListingDto(propertyListing);
            mapper.Map<PropertyListingDTO>(propertyListing).Returns(propertyListingDto);

            // Act
            var handler = new GetListingByIdQueryHandler(mapper, repository);
            var result = await handler.Handle(query, CancellationToken.None);

            // Assert
            result.Should().NotBeNull();
            result.PropertyId.Should().Be(propertyId);
        }

        [Fact]
        public async Task Given_GetListingByIdQueryHandler_When_HandleIsCalled_Then_ExceptionShouldBeThrown()
        {
            // Arrange
            var propertyId = new Guid("7b2ed928-a903-47f5-8bcd-c93216154f29");
            repository.GetListingByIdAsync(propertyId).Returns((PropertyListing)null);
            var query = new GetListingByIdQuery { PropertyId = propertyId };

            // Act
            var handler = new GetListingByIdQueryHandler(mapper, repository);
            Func<Task> act = async () => await handler.Handle(query, CancellationToken.None);

            // Assert
            await act.Should().ThrowAsync<Exception>().WithMessage($"Property listing with ID {propertyId} not found.");
        }

        private PropertyListing GeneratePropertyListing(Guid propertyId)
        {
            return new PropertyListing
            {
                PropertyId = propertyId,
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
                UserID = new Guid("28d69cce-1274-42f9-ad8e-3ffcf960421c")
            };
        }

        private PropertyListingDTO GeneratePropertyListingDto(PropertyListing propertyListing)
        {
            return new PropertyListingDTO
            {
                PropertyId = propertyListing.PropertyId,
                Address = propertyListing.Address,
                Type = propertyListing.Type,
                Price = propertyListing.Price,
                SquareFootage = propertyListing.SquareFootage,
                NumberOfBedrooms = propertyListing.NumberOfBedrooms,
                NumberOfBathrooms = propertyListing.NumberOfBathrooms,
                Description = propertyListing.Description,
                Status = propertyListing.Status,
                ListingDate = propertyListing.ListingDate,
                ImageURLs = propertyListing.ImageURLs,
                UserID = propertyListing.UserID
            };
        }
    }
}
