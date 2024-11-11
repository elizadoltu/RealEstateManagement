using Application.Use_Cases.Commands;
using AutoMapper;
using Domain.Common;
using Domain.Entities;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.CommandHandlers
{
    public class CreatePropertyListingCommandHandler : IRequestHandler<CreatePropertyListingCommand, Result<Guid>>
    {
        private readonly IPropertyListingRepository repository;
        private readonly IMapper mapper;

        public CreatePropertyListingCommandHandler(IPropertyListingRepository repository, IMapper mapper)
        {
            this.repository = repository;
            this.mapper = mapper;
        }

        public async Task<Result<Guid>> Handle(CreatePropertyListingCommand request, CancellationToken cancellationToken)
        {
            var propertyListing = mapper.Map<PropertyListing>(request);

            var result = await repository.AddListingAsync(propertyListing);
            if(result.IsSuccess)
            {
                return Result<Guid>.Success(result.Data);
            }
            return Result<Guid>.Failure(result.ErrorMessage);
        }
    }
}
