using Application.DTOs;
using Application.Use_Cases.Queries;
using AutoMapper;
using Domain.Repositories;
using MediatR;


namespace Application.Use_Cases.QueryHandlers
{
    public class GetListingByIdQueryHandler : IRequestHandler<GetListingByIdQuery, PropertyListingDTO>
    {
        private readonly IMapper mapper;
        private readonly IPropertyListingRepository repository;

        public GetListingByIdQueryHandler(IMapper mapper, IPropertyListingRepository repository)
        {
            this.mapper = mapper;
            this.repository = repository;
        }

        public async Task<PropertyListingDTO> Handle(GetListingByIdQuery request, CancellationToken cancellationToken)
        {
            var listing = await repository.GetListingByIdAsync(request.PropertyId);

            if (listing == null)
            {
                throw new Exception($"Property listing with ID {request.PropertyId} not found.");
            }

            return mapper.Map<PropertyListingDTO>(listing);
        }
    }
}
