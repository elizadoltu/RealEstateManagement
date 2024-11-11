using Application.Use_Cases.Commands;
using AutoMapper;
using Domain.Common;
using Domain.Entities;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.CommandHandlers
{
    public class UpdatePropertyListingCommandHandler : IRequestHandler<UpdatePropertyListingCommand, Result<Guid>>
    {
        private readonly IPropertyListingRepository repository;
        private readonly IMapper mapper;

        public UpdatePropertyListingCommandHandler(IPropertyListingRepository repository, IMapper mapper)
        {
            this.repository = repository;
            this.mapper = mapper;
        }

        public async Task<Result<Guid>> Handle(UpdatePropertyListingCommand request, CancellationToken cancellationToken)
        {
            var listing = mapper.Map<PropertyListing>(request);
            var result = await repository.UpdateListingAsync(listing);
            if (result.IsSuccess)
            {
                return Result<Guid>.Success(result.Data);
            }
            return Result<Guid>.Failure(result.ErrorMessage);
        }
    }
}
