using Application.DTOs;
using Domain.Common;
using MediatR;

namespace Application.Use_Cases.Transactions.Queries
{
    public class GetTransactionByIdQuery : IRequest<Result<TransactionDto>>
    {
        public Guid TransactionId { get; set; }
    }
}
