using Application.DTOs;
using MediatR;

namespace Application.Use_Cases.ClientInquiries.Queries
{
    public class GetAllInquiriesQuery : IRequest<List<ClientInquiryDto>>
    {   

    }
}
