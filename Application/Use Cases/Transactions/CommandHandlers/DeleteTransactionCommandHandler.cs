using MediatR;
using Domain.Repositories;
using RealEstateManagement.Application.Transactions.Commands;

namespace RealEstateManagement.Application.Transactions.CommandHandlers
{
    public class DeleteTransactionCommandHandler : IRequestHandler<DeleteTransactionCommand, Unit>
    {
        private readonly ITransactionRepository _transactionRepository;

        public DeleteTransactionCommandHandler(ITransactionRepository transactionRepository)
        {
            _transactionRepository = transactionRepository;
        }

        public async Task<Unit> Handle(DeleteTransactionCommand request, CancellationToken cancellationToken)
        {
            await _transactionRepository.DeleteTransactionAsync(request.TransactionId);
            return Unit.Value;
        }
    }
}
