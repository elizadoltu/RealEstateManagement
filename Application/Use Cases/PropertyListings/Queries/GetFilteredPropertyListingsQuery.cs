using Application.DTOs;
using Application.Utils;
using Domain.Common;
using MediatR;

namespace Application.Use_Cases.PropertyListings.Queries
{
    public class GetFilteredPropertyListingsQuery : IRequest<Result<PagedResult<PropertyListingDto>>>
    {
        public int Page { get; set; }
        public int PageSize { get; set; }
        public string? Type { get; set; }
        public double Price { get; set; }
        public double SquareFootage { get; set; }
        public double NumberOfBedrooms { get; set; }
        public double NumberOfBathrooms { get; set; }
        public string? Status { get; set; }
    }
}
