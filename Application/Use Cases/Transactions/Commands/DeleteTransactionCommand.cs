using MediatR;
using System;

namespace RealEstateManagement.Application.Transactions.Commands
{
    public class DeleteTransactionCommand : IRequest<Unit>
    {
        public Guid TransactionId { get; set; }

        public DeleteTransactionCommand(Guid transactionId)
        {
            TransactionId = transactionId;
        }
    }
}
