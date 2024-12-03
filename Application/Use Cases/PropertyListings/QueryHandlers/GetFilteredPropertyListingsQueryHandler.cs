using Application.DTOs;
using Application.Use_Cases.PropertyListings.Queries;
using Application.Utils;
using AutoMapper;
using Domain.Common;
using Domain.Repositories;
using Gridify;
using MediatR;

namespace Application.Use_Cases.PropertyListings.QueryHandlers
{
    public class GetFilteredPropertyListingsQueryHandler : IRequestHandler<GetFilteredPropertyListingsQuery, Result<PagedResult<PropertyListingDto>>>
    {
        private readonly IPropertyListingRepository repository;
        private readonly IMapper mapper;

        public GetFilteredPropertyListingsQueryHandler(IPropertyListingRepository repository, IMapper mapper)
        {
            this.repository = repository;
            this.mapper = mapper;
        }

        public async Task<Result<PagedResult<PropertyListingDto>>> Handle(GetFilteredPropertyListingsQuery request, CancellationToken cancellationToken)
        {
            var propertyListings = await repository.GetAllListingsAsync();
            var query = propertyListings.AsQueryable();

            //apply filter
            if (!string.IsNullOrEmpty(request.Type))
            {
                query = query.Where(x => x.Type.ToLower() == request.Type.ToLower());
            }
            if (request.Price > 0)
            {
                query = query.Where(x => x.Price <= request.Price);
            }
            if (request.SquareFootage > 0)
            {
                query = query.Where(x => x.SquareFootage <= request.SquareFootage);
            }
            if (request.NumberOfBedrooms > 0)
            {
                query = query.Where(x => x.NumberOfBedrooms <= request.NumberOfBedrooms);
            }
            if (request.NumberOfBathrooms > 0)
            {
                query = query.Where(x => x.NumberOfBathrooms <= request.NumberOfBathrooms);
            }
            if (!string.IsNullOrEmpty(request.Status))
            {
                query = query.Where(x => x.Status == request.Status);
            }

            //apply pagination
            var pagedPropertyListings = query.ApplyPaging(request.Page, request.PageSize);

            var PropertyListingDtos = mapper.Map<List<PropertyListingDto>>(pagedPropertyListings);

            var pagedResult = new PagedResult<PropertyListingDto>(PropertyListingDtos, query.Count());

            return Result<PagedResult<PropertyListingDto>>.Success(pagedResult);

        }
    }
}
