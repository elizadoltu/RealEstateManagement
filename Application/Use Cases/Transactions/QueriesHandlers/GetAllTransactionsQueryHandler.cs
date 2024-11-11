using Application.DTOs;
using Application.Use_Cases.Queries;
using Application.Use_Cases.Transactions.Queries;
using AutoMapper;
using Domain.Common;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.Transactions.QueriesHandlers
{
    public class GetAllTransactionsQueryHandler : IRequestHandler<GetAllTransactionsQuery, Result<List<TransactionDto>>>
    {
        private readonly IMapper mapper;
        private readonly ITransactionRepository repository;

        public GetAllTransactionsQueryHandler(IMapper mapper, ITransactionRepository repository)
        {
           this.mapper = mapper;
           this.repository = repository;
        }

        public async Task<Result<List<TransactionDto>>> Handle(GetAllTransactionsQuery request, CancellationToken cancellationToken)
        {
            var result = await repository.GetAllTransactionsAsync();
            if (result.IsSuccess)
            {
                var transactionDtos = result.Data.Select(transaction => mapper.Map<TransactionDto>(transaction)).ToList();
                return Result<List<TransactionDto>>.Success(transactionDtos);
            }
            else
            {
                return Result<List<TransactionDto>>.Failure(result.ErrorMessage);
            }
        }
    }
}
