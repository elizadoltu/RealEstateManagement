using Application.DTOs;
using Domain.Common;
using MediatR;
namespace Application.Use_Cases.Users.Queries
{
    public class GetUserByIdQuery : IRequest<Result<UserDto>>
    {
        public Guid UserId { get; set; }
    }
}
