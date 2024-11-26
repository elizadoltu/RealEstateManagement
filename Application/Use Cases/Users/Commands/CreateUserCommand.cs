using Domain.Common;
using Domain.Entities;
using MediatR;

namespace Application.Use_Cases.Commands
{
    public class CreateUserCommand : IRequest<Result<Guid>>
    {
        public string? Name { get; set; }
        public string? Email { get; set; }
        public string? PhoneNumber { get; set; }
        public List<PropertyListing>? propertyListings { get; set; }
        public List<ClientInquiry>? clientInquiries { get; set; }
    }
}
