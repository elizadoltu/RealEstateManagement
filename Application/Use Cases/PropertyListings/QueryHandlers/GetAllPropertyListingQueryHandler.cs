using Application.DTOs;
using Application.Use_Cases.Queries;
using AutoMapper;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.QueryHandlers
{
    public class GetAllPropertyListingQueryHandler : IRequestHandler<GetAllPropertyListingQuery, List<PropertyListingDto>>
    {
        private readonly IMapper _mapper;
        private readonly IPropertyListingRepository _repository;

        public GetAllPropertyListingQueryHandler(IMapper mapper, IPropertyListingRepository repository)
        {
            _mapper = mapper;
            _repository = repository;
        }

        public async Task<List<PropertyListingDto>> Handle(GetAllPropertyListingQuery request, CancellationToken cancellationToken)
        {
            var listings = await _repository.GetAllListingsAsync();
            return listings.Select(listing => _mapper.Map<PropertyListingDto>(listing)).ToList();
        }
    }
}
