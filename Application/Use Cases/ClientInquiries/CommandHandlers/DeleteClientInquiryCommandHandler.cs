using Application.Use_Cases.ClientInquiries.Commands;
using Domain.Common;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.ClientInquiries.CommandHandlers
{
    public class DeleteClientInquiryCommandHandler : IRequestHandler<DeleteClientInquiryCommand, Result<Guid>>
    {
        private readonly IClientInquiryRepository repository;

        public DeleteClientInquiryCommandHandler(IClientInquiryRepository repository)
        {
            this.repository = repository;
        }

        public async Task<Result<Guid>> Handle(DeleteClientInquiryCommand request, CancellationToken cancellationToken)
        {
            var result = await repository.DeleteInquiryAsync(request.InquiryId);
            if (result.IsSuccess)
            {
                return Result<Guid>.Success(result.Data);
            }
            return Result<Guid>.Failure(result.ErrorMessage);
        }
    }
}
