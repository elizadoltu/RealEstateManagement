using Application.DTOs;
using Application.Use_Cases.ClientInquiries.Queries;
using Application.Use_Cases.ClientInquiries.QueryHandler;
using AutoMapper;
using Domain.Entities;
using Domain.Repositories;
using FluentAssertions;
using NSubstitute;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Xunit;

namespace RealEstateManagement.Application.UnitTests
{
    public class GetAllInquiriesQueryHandlerTests
    {
        private readonly IClientInquiryRepository _repository;
        private readonly IMapper _mapper;

        public GetAllInquiriesQueryHandlerTests()
        {
            _repository = Substitute.For<IClientInquiryRepository>();
            _mapper = Substitute.For<IMapper>();
        }

        [Fact]
        public async Task Given_GetAllInquiriesQueryHandler_When_HandleIsCalled_Then_AllInquiriesShouldBeReturned()
        {
            // Arrange
            var inquiries = GenerateClientInquiries();
            _repository.GetAllInquiriesAsync().Returns(inquiries);

            var inquiryDtos = inquiries.Select(inquiry => GenerateClientInquiryDto(inquiry)).ToList();
            foreach (var inquiry in inquiries)
            {
                _mapper.Map<ClientInquiryDto>(inquiry).Returns(inquiryDtos.First(dto => dto.InquiryId == inquiry.InquiryId));
            }

            var query = new GetAllInquiriesQuery();

            // Act
            var handler = new GetAllInquiriesQueryHandler(_mapper, _repository);
            var result = await handler.Handle(query, CancellationToken.None);

            // Assert
            result.Should().NotBeNull();
            result.Count.Should().Be(inquiries.Count);
            result.Select(x => x.InquiryId).Should().BeEquivalentTo(inquiries.Select(x => x.InquiryId));
        }

        [Fact]
        public async Task Given_GetAllInquiriesQueryHandler_When_NoInquiriesExist_Then_EmptyListShouldBeReturned()
        {
            // Arrange
            _repository.GetAllInquiriesAsync().Returns(new List<ClientInquiry>());

            var query = new GetAllInquiriesQuery();

            // Act
            var handler = new GetAllInquiriesQueryHandler(_mapper, _repository);
            var result = await handler.Handle(query, CancellationToken.None);

            // Assert
            result.Should().NotBeNull();
            result.Should().BeEmpty();
        }

        private List<ClientInquiry> GenerateClientInquiries()
        {
            return new List<ClientInquiry>
            {
                new ClientInquiry
                {
                    InquiryId = new Guid("d4a3e1b5-89e6-4df3-9f29-ebb2c982f53c"),
                    ClientId = new Guid("0b4f6061-2f3d-4b23-8920-8a3bc2b7c6e0"),
                    Types = new List<string> { "Apartment", "Condo" },
                    MinPrice = 150000,
                    MaxPrice = 300000,
                    MinSquareFootage = 1000,
                    MaxSquareFootage = 2000,
                    NumberOfBedrooms = 2,
                    NumberOfBathrooms = 2
                },
                new ClientInquiry
                {
                    InquiryId = new Guid("af3bde16-89e6-4ef2-8fa1-bfe76e6a12d1"),
                    ClientId = new Guid("1d2b3c4f-5e6a-7b8c-9d0e-f123456789ab"),
                    Types = new List<string> { "House" },
                    MinPrice = 250000,
                    MaxPrice = 500000,
                    MinSquareFootage = 1500,
                    MaxSquareFootage = 3000,
                    NumberOfBedrooms = 3,
                    NumberOfBathrooms = 3
                }
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
