using Application.DTOs;
using Domain.Common;
using MediatR;

namespace Application.Use_Cases.Users.Queries
{
    public class GetAllUsersQuery : IRequest<Result<List<UserDto>>>
    {
    }
}
