using Application.DTOs;
using Domain.Common;
using MediatR;

namespace Application.Use_Cases.Transactions.Queries
{
    public class GetAllTransactionsQuery : IRequest<Result<List<TransactionDto>>>
    {
    }
}
