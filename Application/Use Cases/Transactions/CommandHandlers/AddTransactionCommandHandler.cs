using MediatR;
using Domain.Repositories; 
using RealEstateManagement.Application.Transactions.Commands; 
using Domain.Entities;

namespace RealEstateManagement.Application.Transactions.CommandHandlers
{
    public class AddTransactionCommandHandler : IRequestHandler<AddTransactionCommand, Transaction>
    {
        private readonly ITransactionRepository _transactionRepository;

        public AddTransactionCommandHandler(ITransactionRepository transactionRepository)
        {
            _transactionRepository = transactionRepository;
        }

        public async Task<Transaction> Handle(AddTransactionCommand request, CancellationToken cancellationToken)
        {
            return await _transactionRepository.AddTransactionAsync(request.Transaction);
        }
    }
}
