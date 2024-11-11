using Domain.Common;
using Domain.Entities;
using Domain.Repositories;
using Infrastructure.Persistance;
using Microsoft.EntityFrameworkCore;

namespace Infrastructure.Repositories
{
    public class TransactionRepository : ITransactionRepository
    {
        private readonly ApplicationDbContext context;

        public TransactionRepository(ApplicationDbContext context)
        {
            this.context = context;
        }

        public async Task<Result<IEnumerable<Transaction>>> GetAllTransactionsAsync() 
        {
            try
            {
                var transactions = await context.Transactions.ToListAsync();
                return Result<IEnumerable<Transaction>>.Success(transactions);
            }
            catch (Exception ex)
            {
                return Result<IEnumerable<Transaction>>.Failure($"An error occurred while retrieving transactions: {ex.Message}");
            }
        }
        public async Task<Result<Transaction>> GetTransactionByIdAsync(Guid id)
        {
            try
            {
                var transaction = await context.Transactions.FindAsync(id);
                return Result<Transaction>.Success(transaction);
            }
            catch (Exception ex)
            {
                return Result<Transaction>.Failure($"An error occurred while retrieving transaction: {ex.Message}");
            }
        }


        public async Task<Transaction> AddTransactionAsync(Transaction transaction)
        {
            await context.Transactions.AddAsync(transaction);
            await context.SaveChangesAsync();
            return transaction;
        }

        public async Task UpdateTransactionAsync(Transaction transaction)
        {
            var existingTransaction = await context.Transactions.FindAsync(transaction.TransactionId);
            if (existingTransaction != null)
            {
                existingTransaction.PropertyId = transaction.PropertyId;
                existingTransaction.BuyerId = transaction.BuyerId;
                existingTransaction.SellerId = transaction.SellerId;
                existingTransaction.SalePrice = transaction.SalePrice;
                existingTransaction.Status = transaction.Status;

                context.Transactions.Update(existingTransaction);
                await context.SaveChangesAsync();
            }
            else
            {
                throw new Exception($"Transaction with ID {transaction.TransactionId} not found.");
            }
        }

        public async Task DeleteTransactionAsync(Guid id)
        {
            var transaction = await context.Transactions.FindAsync(id);
            if (transaction != null)
            {
                context.Transactions.Remove(transaction);
                await context.SaveChangesAsync();
            }
            else
            {
                throw new Exception($"Transaction with ID {id} not found.");
            }
        }

        public Task<Result<Transaction>> GetTransactionByPropertyIdAsync(Guid id)
        {
            throw new NotImplementedException();
        }

        public Task<IEnumerable<Transaction>> GetTransactionsByBuyerId(Guid userId)
        {
            throw new NotImplementedException();
        }

        public Task<IEnumerable<Transaction>> GetTransactionsBySellerId(Guid userId)
        {
            throw new NotImplementedException();
        }
    }
}
