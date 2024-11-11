using Application.DTOs;
using Application.Use_Cases.Transactions.Queries;
using AutoMapper;
using Domain.Common;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.Transactions.QueriesHandlers
{
    public class GetTransactionByIdQueryHandler : IRequestHandler<GetTransactionByIdQuery, Result<TransactionDto>>
    {
        private readonly ITransactionRepository repository;
        private readonly IMapper mapper;

        public GetTransactionByIdQueryHandler(ITransactionRepository repository, IMapper mapper)
        {
            this.repository = repository;
            this.mapper = mapper;
        }

        public async Task<Result<TransactionDto>> Handle(GetTransactionByIdQuery request, CancellationToken cancellationToken)
        {
            var result = await repository.GetTransactionByIdAsync(request.TransactionId);
            if (result.IsSuccess)
            {
                var transactionDto = mapper.Map<TransactionDto>(result.Data);
                return Result<TransactionDto>.Success(transactionDto);
            }
            else
            {
                return Result<TransactionDto>.Failure($"Transaction with ID {request.TransactionId} not found.");
            }

            
        }

    }
}
