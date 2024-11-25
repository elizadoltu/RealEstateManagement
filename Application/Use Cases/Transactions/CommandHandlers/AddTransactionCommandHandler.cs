using Application.Use_Cases.Transactions.Commands;
using Domain.Entities;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.Transactions.CommandHandlers
{
    public class AddTransactionCommandHandler : IRequestHandler<AddTransactionCommand, Guid>
    {
        private readonly ITransactionRepository _transactionRepository;

        public AddTransactionCommandHandler(ITransactionRepository transactionRepository)
        {
            _transactionRepository = transactionRepository;
        }

        public async Task<Guid> Handle(AddTransactionCommand request, CancellationToken cancellationToken)
        {
            var transaction = new Transaction
            {
                TransactionId = Guid.NewGuid(),
                PropertyId = request.PropertyId,
                BuyerId = request.BuyerId,
                SellerId = request.SellerId,
                SalePrice = request.SalePrice,
                Status = request.Status
            };

            await _transactionRepository.AddTransactionAsync(transaction);

            return transaction.TransactionId;
        }
    }
}
