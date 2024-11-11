using Application.DTOs;
using Domain.Common;
using MediatR;

namespace Application.Use_Cases.Transactions.Queries
{
    internal class GetTransactionByPropertyIdQuery : IRequest<Result<TransactionDto>>
    {
        public Guid PropertyId{ get; set; }
    }
}
