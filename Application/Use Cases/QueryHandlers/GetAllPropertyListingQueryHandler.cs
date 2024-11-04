using Application.DTOs;
using Application.Use_Cases.Queries;
using AutoMapper;
using Domain.Repositories;
using MediatR;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Use_Cases.QueryHandlers
{
    public class GetAllPropertyListingQueryHandler : IRequestHandler<GetAllPropertyListingQuery, List<PropertyListingDTO>>
    {
        private readonly IMapper _mapper;
        private readonly IPropertyListingRepository _repository;

        public GetAllPropertyListingQueryHandler(IMapper mapper, IPropertyListingRepository repository)
        {
            _mapper = mapper;
            _repository = repository;
        }

        public async Task<List<PropertyListingDTO>> Handle(GetAllPropertyListingQuery request, CancellationToken cancellationToken)
        {
            var listings = await _repository.GetAllListingsAsync();
            return listings.Select(listing => _mapper.Map<PropertyListingDTO>(listing)).ToList();
        }
    }
}
