using Application.DTOs;
using MediatR;

namespace Application.Use_Cases.Queries
{
    public class GetListingByIdQuery : IRequest<PropertyListingDTO>
    {
        public Guid PropertyId { get; set; }
    }
}
