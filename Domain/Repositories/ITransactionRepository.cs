using Domain.Common;
using Domain.Entities;

namespace Domain.Repositories
{
    public interface ITransactionRepository
    {
        Task<Result<IEnumerable<Transaction>>> GetAllTransactionsAsync();
        Task<Result<Transaction>> GetTransactionByIdAsync(Guid id);
        Task<Result<Transaction>> GetTransactionByPropertyIdAsync(Guid id);
        Task<IEnumerable<Transaction>> GetTransactionsByBuyerId(Guid userId);
        Task<IEnumerable<Transaction>> GetTransactionsBySellerId(Guid userId);
        Task<Transaction> AddTransactionAsync(Transaction transaction);
        Task UpdateTransactionAsync(Transaction transaction);
        Task DeleteTransactionAsync(Guid id);
    }
}
