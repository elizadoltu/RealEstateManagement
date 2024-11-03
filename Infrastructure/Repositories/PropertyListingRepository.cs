using Domain.Entities;
using Domain.Repositories;
using Infrastructure.Persistance;

namespace Infrastructure.Repositories
{
    public class PropertyListingRepository : IPropertyListingRepository
    {
        private readonly ApplicationDbContext context;

        public PropertyListingRepository(ApplicationDbContext context)
        {
            this.context = context;
        }
        public Task<IEnumerable<PropertyListing>> GetAllListingsAsync()
        {
            throw new NotImplementedException();
        }

        public Task<PropertyListing> GetListingByIdAsync(Guid id)
        {
            throw new NotImplementedException();
        }

        public Task<IEnumerable<PropertyListing>> GetListingsByUserId(Guid userId)
        {
            throw new NotImplementedException();
        }

        public Task<PropertyListing> AddListingAsync(PropertyListing listing)
        {
            throw new NotImplementedException();
        }

        public Task UpdateListingAsync(PropertyListing listing)
        {
            throw new NotImplementedException();
        }

        public Task DeleteListingAsync(Guid id)
        {
            throw new NotImplementedException();
        }
    }
}
