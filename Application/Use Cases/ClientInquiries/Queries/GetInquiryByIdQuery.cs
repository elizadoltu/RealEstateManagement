using Application.DTOs;
using MediatR;

namespace Application.Use_Cases.ClientInquiries.Queries
{
    public class GetInquiryByIdQuery : IRequest<ClientInquiryDto>
    {
        public Guid InquiryId { get; set; }
    }
    
}
