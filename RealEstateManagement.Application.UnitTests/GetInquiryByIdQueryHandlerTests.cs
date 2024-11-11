using Application.DTOs;
using Application.Use_Cases.ClientInquiries.Queries;
using Application.Use_Cases.ClientInquiries.QueryHandler;
using AutoMapper;
using Domain.Entities;
using Domain.Repositories;
using FluentAssertions;
using NSubstitute;
using System;
using System.Threading;
using System.Threading.Tasks;
using Xunit;

namespace RealEstateManagement.Application.UnitTests
{
    public class GetInquiryByIdQueryHandlerTests
    {
        private readonly IClientInquiryRepository _repository;
        private readonly IMapper _mapper;

        public GetInquiryByIdQueryHandlerTests()
        {
            _repository = Substitute.For<IClientInquiryRepository>();
            _mapper = Substitute.For<IMapper>();
        }

        [Fact]
        public async Task Given_ValidInquiryId_When_HandleIsCalled_Then_InquiryShouldBeReturned()
        {
            // Arrange
            var inquiryId = new Guid("d4a3e1b5-89e6-4df3-9f29-ebb2c982f53c");
            var inquiry = GenerateClientInquiry(inquiryId);

            _repository.GetInquiryByIdAsync(inquiryId).Returns(inquiry);
            var inquiryDto = GenerateClientInquiryDto(inquiry);
            _mapper.Map<ClientInquiryDto>(inquiry).Returns(inquiryDto);

            var query = new GetInquiryByIdQuery { InquiryId = inquiryId };

            // Act
            var handler = new GetInquiryByIdQueryHandler(_mapper, _repository);
            var result = await handler.Handle(query, CancellationToken.None);

            // Assert
            result.Should().NotBeNull();
            result.InquiryId.Should().Be(inquiryId);
            result.Types.Should().BeEquivalentTo(inquiry.Types);
        }

        [Fact]
        public async Task Given_InvalidInquiryId_When_HandleIsCalled_Then_ExceptionShouldBeThrown()
        {
            // Arrange
            var inquiryId = Guid.Empty; // Use Guid.Empty to simulate an invalid/non-existent inquiry ID.
            _repository.GetInquiryByIdAsync(inquiryId).Returns((ClientInquiry)null);

            var query = new GetInquiryByIdQuery { InquiryId = inquiryId };

            // Act
            var handler = new GetInquiryByIdQueryHandler(_mapper, _repository);
            Func<Task> act = async () => await handler.Handle(query, CancellationToken.None);

            // Assert
            await act.Should().ThrowAsync<Exception>()
                     .WithMessage($"Client inquiry with ID {inquiryId} not found.");
        }


        private ClientInquiry GenerateClientInquiry(Guid inquiryId)
        {
            return new ClientInquiry
            {
                InquiryId = inquiryId,
                ClientId = new Guid("0b4f6061-2f3d-4b23-8920-8a3bc2b7c6e0"),
                Types = new List<string> { "Apartment" },
                MinPrice = 150000,
                MaxPrice = 300000,
                MinSquareFootage = 1000,
                MaxSquareFootage = 2000,
                NumberOfBedrooms = 2,
                NumberOfBathrooms = 2
            };
        }

        private ClientInquiryDto GenerateClientInquiryDto(ClientInquiry inquiry)
        {
            return new ClientInquiryDto
            {
                InquiryId = inquiry.InquiryId,
                ClientId = inquiry.ClientId,
                Types = inquiry.Types,
                MinPrice = inquiry.MinPrice,
                MaxPrice = inquiry.MaxPrice,
                MinSquareFootage = inquiry.MinSquareFootage,
                MaxSquareFootage = inquiry.MaxSquareFootage,
                NumberOfBedrooms = inquiry.NumberOfBedrooms,
                NumberOfBathrooms = inquiry.NumberOfBathrooms
            };
        }
    }
}
