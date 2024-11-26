using Application.DTOs;
using AutoMapper;
using Application.Use_Cases.Commands;
using Domain.Entities;
using Application.Use_Cases.ClientInquiries.Commands;
using Application.Use_Cases.Users.CommandHandlers;
using Application.Use_Cases.Users.Commands;

namespace Application.utils
{
    public class MappingProfile: Profile
    {
        public MappingProfile()
        {
            CreateMap<PropertyListing, PropertyListingDto>().ReverseMap();
            CreateMap<ClientInquiry, ClientInquiryDto>().ReverseMap();
            CreateMap<Transaction, TransactionDto>().ReverseMap();
            CreateMap<User, UserDto>().ReverseMap();

            CreateMap<CreatePropertyListingCommand, PropertyListing>().ReverseMap();
            CreateMap<UpdatePropertyListingCommand, PropertyListing>().ReverseMap();
            CreateMap<CreateClientInquiryCommand, ClientInquiry>().ReverseMap();
            CreateMap<UpdateClientInquiryCommand, ClientInquiry>().ReverseMap();
            CreateMap<CreateUserCommand, User>().ReverseMap();
            CreateMap<UpdateUserCommand, User>().ReverseMap();



        }
    }
}
