using Application.DTOs;
using Application.Use_Cases.Transactions.Queries;
using Application.Use_Cases.Users.Queries;
using AutoMapper;
using Domain.Common;
using Domain.Repositories;
using MediatR;
namespace Application.Use_Cases.Users.QueryHandlers
{
    public class GetAllUsersQueryHandler : IRequestHandler<GetAllUsersQuery, Result<List<UserDto>>>
    {
        private readonly IUserRepository repository;
        private readonly IMapper mapper;

        public GetAllUsersQueryHandler(IUserRepository repository, IMapper mapper)
        {
            this.repository = repository;
            this.mapper = mapper;
        }

        public async Task<Result<List<UserDto>>> Handle(GetAllUsersQuery request, CancellationToken cancellationToken)
        {
            var result = await repository.GetAllUsersAsync();
            if (result.IsSuccess)
            {
                var userDtos = result.Data.Select(user => mapper.Map<UserDto>(user)).ToList();
                return Result<List<UserDto>>.Success(userDtos);
            }
            else
            {
                return Result<List<UserDto>>.Failure(result.ErrorMessage);
            }
        }
    }
}
