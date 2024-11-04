using Application.Use_Cases.Commands;
using AutoMapper;
using Domain.Entities;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.CommandHandlers
{
    public class CreatePropertyListingCommandHandler : IRequestHandler<CreatePropertyListingCommand, Guid>
    {
        private readonly IPropertyListingRepository repository;
        private readonly IMapper mapper;

        public CreatePropertyListingCommandHandler(IPropertyListingRepository repository, IMapper mapper)
        {
            this.repository = repository;
            this.mapper = mapper;
        }

        public async Task<Guid> Handle(CreatePropertyListingCommand request, CancellationToken cancellationToken)
        {
            var propertyListing = mapper.Map<PropertyListing>(request);
            return await repository.AddListingAsync(propertyListing);
        }
    }
}
