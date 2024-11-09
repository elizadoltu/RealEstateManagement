using Application.DTOs;
using MediatR;

namespace Application.Use_Cases.ClientInquiries.Queries
{
    public class GetInquiryByClientIdQuery : IRequest<List<ClientInquiryDto>>
    {
        public Guid ClientId { get; set; }
    }
}
