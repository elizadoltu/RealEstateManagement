using Application.DTOs;
using Application.Use_Cases.Transactions.Queries;
using Application.Use_Cases.Users.Queries;
using AutoMapper;
using Domain.Common;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.Users.QueryHandlers
{
    public class GetUserByIdQueryHandler : IRequestHandler<GetUserByIdQuery, Result<UserDto>>
    {
        private readonly IUserRepository repository;
        private readonly IMapper mapper;

        public GetUserByIdQueryHandler(IUserRepository repository, IMapper mapper)
        {
            this.repository = repository;
            this.mapper = mapper;
        }

        public async Task<Result<UserDto>> Handle(GetUserByIdQuery request, CancellationToken cancellationToken)
        {
            var result = await repository.GetUserByIdAsync(request.UserId);
            if (result.IsSuccess)
            {
                var userDto = mapper.Map<UserDto>(result.Data);
                return Result<UserDto>.Success(userDto);
            }
            else
            {
                return Result<UserDto>.Failure($"User with ID {request.UserId} not found.");
            }


        }
    }
}
