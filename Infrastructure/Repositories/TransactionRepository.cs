using Domain.Entities;
using Domain.Repositories;
using Infrastructure.Persistance;

namespace Infrastructure.Repositories
{
    public class TransactionRepository : ITransactionRepository
    {
        private readonly ApplicationDbContext context;

        public TransactionRepository(ApplicationDbContext context)
        {
            this.context = context;
        }

        public async Task<IEnumerable<Transaction>> GetAllTransactionsAsync() 
        {
            throw new NotImplementedException();
        }
        public async Task<Transaction> GetTransactionByIdAsync(Guid id)
        {
            throw new NotImplementedException();
        }

        public async Task<Transaction> AddTransactionAsync(Transaction transaction)
        {
            throw new NotImplementedException();
        }
        public async Task UpdateTransactionAsync(Transaction transaction)
        {
            throw new NotImplementedException();
        }
        public async Task DeleteTransactionAsync(Guid id)
        {
            throw new NotImplementedException();
        }
    }
}
