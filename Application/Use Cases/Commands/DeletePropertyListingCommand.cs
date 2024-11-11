using Domain.Common;
using MediatR;

namespace Application.Use_Cases.Commands
{
    public class DeletePropertyListingCommand : IRequest<Result<Guid>>
    {
        public Guid PropertyId { get; set; }
    }
}
