using Application.Use_Cases.Commands;
using Domain.Common;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.CommandHandlers
{
    public class DeletePropertyListingCommandHandler : IRequestHandler<DeletePropertyListingCommand, Result<Guid>>
    {
        private readonly IPropertyListingRepository repository;

        public DeletePropertyListingCommandHandler(IPropertyListingRepository repository)
        {
            this.repository = repository;
        }
        public async Task<Result<Guid>> Handle(DeletePropertyListingCommand request, CancellationToken cancellationToken)
        {
            var result = await repository.DeleteListingAsync(request.PropertyId);
            if (result.IsSuccess)
            {
                return Result<Guid>.Success(result.Data);
            }
            return Result<Guid>.Failure(result.ErrorMessage);
        }
    }
}
