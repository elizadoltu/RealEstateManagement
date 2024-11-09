using Domain.Common;
using MediatR;

namespace Application.Use_Cases.ClientInquiries.Commands
{
    public class DeleteClientInquiryCommand : IRequest<Result<Guid>>
    {
        public Guid InquiryId { get; set; }
    }
}
