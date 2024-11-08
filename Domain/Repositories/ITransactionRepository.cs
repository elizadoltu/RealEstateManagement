using Domain.Entities;

namespace Domain.Repositories
{
    public interface ITransactionRepository
    {
        Task<IEnumerable<Transaction>> GetAllTransactionsAsync();
        Task<Transaction> GetTransactionByIdAsync(Guid id);
        Task<Transaction> GetTransactionByPropertyIdAsync(Guid id);
        Task<IEnumerable<Transaction>> GetTransactionsByBuyerId(Guid userId);
        Task<IEnumerable<Transaction>> GetTransactionsBySellerId(Guid userId);
        Task<Transaction> AddTransactionAsync(Transaction transaction);
        Task UpdateTransactionAsync(Transaction transaction);
        Task DeleteTransactionAsync(Guid id);
    }
}
