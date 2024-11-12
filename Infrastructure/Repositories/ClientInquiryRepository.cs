using Domain.Common;
using Domain.Entities;
using Domain.Repositories;
using Infrastructure.Persistance;
using Microsoft.EntityFrameworkCore;

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
            var inquiry = await context.ClientInquiries.FindAsync(id);
            if (inquiry == null)
            {
                throw new KeyNotFoundException($"Client inquiry with ID {id} not found.");
            }
            return inquiry;
        }
        public async Task<IEnumerable<ClientInquiry>> GetInquiriesByClientId(Guid userId)
        {
            return await context.ClientInquiries
                                .Where(inquiry => inquiry.ClientId == userId)  
                                .ToListAsync();
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
        public async Task<Result<Guid>> UpdateInquiryAsync(ClientInquiry inquiry)
        {
            try
            {
                var existingInquiry = await context.ClientInquiries.FindAsync(inquiry.InquiryId);
                if (existingInquiry != null)
                {
                    context.Entry(existingInquiry).CurrentValues.SetValues(inquiry);
                    await context.SaveChangesAsync();

                    return Result<Guid>.Success(inquiry.InquiryId);
                }
                else
                {
                    return Result<Guid>.Failure("Inquiry not found.");
                }
            }
            catch (Exception ex)
            {
                var errorMessage = ex.InnerException != null ? ex.InnerException.Message : ex.Message;
                return Result<Guid>.Failure(errorMessage);
            }
        }
        public async Task<Result<Guid>> DeleteInquiryAsync(Guid id)
        {
            try
            {
                var inquiry = await context.ClientInquiries.FindAsync(id);
                if (inquiry != null)
                {
                    context.ClientInquiries.Remove(inquiry);
                    await context.SaveChangesAsync();
                    return Result<Guid>.Success(id);
                }
                return Result<Guid>.Failure("Inquiry not found");
            }
            catch (Exception ex)
            {
                var errorMessage = ex.InnerException != null ? ex.InnerException.ToString() : ex.Message;
                return Result<Guid>.Failure(errorMessage);
            }
        }
    }
}
