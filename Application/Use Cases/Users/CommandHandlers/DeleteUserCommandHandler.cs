using Application.Use_Cases.Commands;
using Application.Use_Cases.Users.Commands;
using Domain.Common;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.Users.CommandHandlers
{
    public class DeleteUserCommandHandler : IRequestHandler<DeleteUserCommand, Result<Guid>>
    {
        private readonly IUserRepository repository;

        public DeleteUserCommandHandler(IUserRepository repository)
        {
            this.repository = repository;
        }
        public async Task<Result<Guid>> Handle(DeleteUserCommand request, CancellationToken cancellationToken)
        {
            var result = await repository.DeleteUserAsync(request.UserId);
            if (result.IsSuccess)
            {
                return Result<Guid>.Success(result.Data);
            }
            return Result<Guid>.Failure(result.ErrorMessage);
        }
    }
}
