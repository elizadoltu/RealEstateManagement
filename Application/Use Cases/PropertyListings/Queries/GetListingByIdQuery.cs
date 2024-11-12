using Application.DTOs;
using MediatR;

namespace Application.Use_Cases.Queries
{
    public class GetListingByIdQuery : IRequest<PropertyListingDto>
    {
        public Guid PropertyId { get; set; }
    }
}
