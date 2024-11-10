using Domain.Common;
using MediatR;
using Domain.Entities;

namespace RealEstateManagement.Application.Transactions.Commands
{
    public class UpdateTransactionCommand : IRequest<Result<Guid>>
    {
        public Transaction Transaction { get; set; }

        public UpdateTransactionCommand(Transaction transaction)
        {
            Transaction = transaction;
        }
    }
}
