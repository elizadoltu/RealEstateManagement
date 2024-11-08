using Domain.Common;
using Domain.Entities;

namespace Domain.Repositories
{
    public interface IClientInquiryRepository
    {
        Task<IEnumerable<ClientInquiry>> GetAllInquiriesAsync();
        Task<ClientInquiry> GetInquiryByIdAsync(Guid id);
        Task<IEnumerable<ClientInquiry>> GetInquiriesByClientId(Guid clientId);
        Task<Result<Guid>> AddInquiryAsync(ClientInquiry inquiry);
        Task UpdateInquiryAsync(ClientInquiry inquiry);
        Task DeleteInquiryAsync(Guid id);
    }
}
