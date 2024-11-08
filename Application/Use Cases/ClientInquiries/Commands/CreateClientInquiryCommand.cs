using Domain.Common;
using MediatR;

namespace Application.Use_Cases.ClientInquiries.Commands
{
    public class CreateClientInquiryCommand : IRequest<Result<Guid>>
    {
        public Guid InquiryId { get; set; }
        public Guid ClientId { get; set; }
        public List<string>? Types { get; set; }
        public double MinPrice { get; set; }
        public double MaxPrice { get; set; }
        public double MinSquareFootage { get; set; }
        public double MaxSquareFootage { get; set; }
        public double NumberOfBedrooms { get; set; }
        public double NumberOfBathrooms { get; set; }
    }
}
