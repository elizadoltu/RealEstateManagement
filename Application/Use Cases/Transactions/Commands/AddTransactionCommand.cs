using MediatR;
using Domain.Entities;

namespace RealEstateManagement.Application.Transactions.Commands
{
    public class AddTransactionCommand : IRequest<Transaction>
    {
        public Transaction Transaction { get; set; }

        public AddTransactionCommand(Transaction transaction)
        {
            Transaction = transaction;
        }
    }
}
