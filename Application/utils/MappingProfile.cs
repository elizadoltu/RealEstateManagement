using Application.DTOs;
using AutoMapper;
using Application.Use_Cases.Commands;
using Domain.Entities;
using Application.Use_Cases.ClientInquiries.Commands;

namespace Application.utils
{
    public class MappingProfile: Profile
    {
        public MappingProfile()
        {
            CreateMap<PropertyListing, PropertyListingDTO>().ReverseMap();
            CreateMap<ClientInquiry, ClientInquiryDto>().ReverseMap();
            CreateMap<Transaction, TransactionDto>().ReverseMap();
            CreateMap<User, UserDto>().ReverseMap();

            CreateMap<CreatePropertyListingCommand, PropertyListing>().ReverseMap();
            CreateMap<CreateClientInquiryCommand, ClientInquiry>().ReverseMap();
        }
    }
}
