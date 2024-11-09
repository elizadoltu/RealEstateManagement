using Domain.Common;
using Domain.Entities;
using Domain.Repositories;
using Infrastructure.Persistance;
using Microsoft.EntityFrameworkCore;
using System.Reflection;

namespace Infrastructure.Repositories
{
    public class ClientInquiryRepository : IClientInquiryRepository
    {
        private readonly ApplicationDbContext context;
        public ClientInquiryRepository(ApplicationDbContext context)
        {
            this.context = context;
        }
        public async Task<IEnumerable<ClientInquiry>> GetAllInquiriesAsync()
        {
            return await context.ClientInquiries.ToListAsync();
        }
        public async Task<ClientInquiry> GetInquiryByIdAsync(Guid id)
        {
            return await context.ClientInquiries.FindAsync(id);
        }
        public async Task<IEnumerable<ClientInquiry>> GetInquiriesByClientId(Guid userId)
        {
            return await context.ClientInquiries.ToListAsync();
        }
        public async Task<Result<Guid>> AddInquiryAsync(ClientInquiry inquiry)
        {
            try
            {
                await context.ClientInquiries.AddAsync(inquiry);
                await context.SaveChangesAsync();
                return Result<Guid>.Success(inquiry.InquiryId);
            }
            catch (Exception ex)
            {
                var errorMessage = ex.InnerException != null ? ex.InnerException.ToString() : ex.Message;
                return Result<Guid>.Failure(errorMessage);
            }
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
