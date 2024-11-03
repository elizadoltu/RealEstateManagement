using Domain.Entities;
using Domain.Repositories;
using Infrastructure.Persistance;

namespace Infrastructure.Repositories
{
    public class ClientInquiryRepository : IClientInquiryRepository
    {
        private readonly ApplicationDbContext context;
        public ClientInquiryRepository(ApplicationDbContext context)
        {
            this.context = context;
        }
        public Task<IEnumerable<ClientInquiry>> GetAllInquiriesAsync()
        {
            throw new NotImplementedException();
        }
        public Task<ClientInquiry> GetInquiryByIdAsync(Guid id)
        {
            throw new NotImplementedException();
        }
        public Task<IEnumerable<ClientInquiry>> GetInquiriesByClientId(Guid userId)
        {
            throw new NotImplementedException();
        }
        public Task<ClientInquiry> AddInquiryAsync(ClientInquiry inquiry)
        {
            throw new NotImplementedException();
        }
        public Task UpdateInquiryAsync(ClientInquiry inquiry)
        {
            throw new NotImplementedException();
        }
        public Task DeleteInquiryAsync(Guid id)
        {
            throw new NotImplementedException();
        }
    }
}
