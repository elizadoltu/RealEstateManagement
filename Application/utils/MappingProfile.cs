using Application.DTOs;
using AutoMapper;
using Application.Use_Cases.Commands;
using Domain.Entities;

namespace Application.utils
{
    public class MappingProfile: Profile
    {
        public MappingProfile()
        {
            CreateMap<PropertyListingDTO, PropertyListingDTO>().ReverseMap();
            CreateMap<ClientInquiry, ClientInquiryDto>().ReverseMap();
            CreateMap<Transaction, TransactionDto>().ReverseMap();
            CreateMap<User, UserDto>().ReverseMap();

            CreateMap<CreatePropertyListingCommand, PropertyListing>().ReverseMap();
        }
    }
}
