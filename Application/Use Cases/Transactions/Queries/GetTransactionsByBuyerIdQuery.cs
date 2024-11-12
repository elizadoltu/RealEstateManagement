using Application.DTOs;
using Application.Utils;
using Domain.Common;
using MediatR;

namespace Application.Use_Cases.Transactions.Queries
{
    public class GetTransactionsByBuyerIdQuery : IRequest<Result<PagedResult<TransactionDto>>>
    {
        public Guid BuyerId { get; set; }
        public int Page { get; set; }
        public int PageSize { get; set; }
    }
}
