using Application.Use_Cases.ClientInquiries.Commands;
using AutoMapper;
using Domain.Common;
using Domain.Entities;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.ClientInquiries.CommandHandlers
{
    public class CreateClientInquiryCommandHandler : IRequestHandler<CreateClientInquiryCommand, Result<Guid>>
    {
        private readonly IClientInquiryRepository repository;
        private readonly IMapper mapper;

        public CreateClientInquiryCommandHandler(IClientInquiryRepository repository, IMapper mapper)
        {
            this.repository = repository;
            this.mapper = mapper;
        }

        public async Task<Result<Guid>> Handle(CreateClientInquiryCommand request, CancellationToken cancellationToken)
        {
            var clientInquiry = mapper.Map<ClientInquiry>(request);

            var result = await repository.AddInquiryAsync(clientInquiry);
            if (result.IsSuccess)
            {
                return Result<Guid>.Success(result.Data);
            }
            return Result<Guid>.Failure(result.ErrorMessage);
        }
    }
}
