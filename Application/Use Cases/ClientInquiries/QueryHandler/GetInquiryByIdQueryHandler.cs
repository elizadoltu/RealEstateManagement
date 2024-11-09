using Application.DTOs;
using Application.Use_Cases.ClientInquiries.Queries;
using AutoMapper;
using Domain.Repositories;
using MediatR;                                      

namespace Application.Use_Cases.ClientInquiries.QueryHandler
{
    public class GetInquiryByIdQueryHandler : IRequestHandler<GetInquiryByIdQuery, ClientInquiryDto>
    {
        private readonly IMapper mapper;
        private readonly IClientInquiryRepository repository;

        public GetInquiryByIdQueryHandler(IMapper mapper, IClientInquiryRepository repository)
        {
            this.mapper = mapper;
            this.repository = repository;
        }

        public async Task<ClientInquiryDto> Handle(GetInquiryByIdQuery request, CancellationToken cancellationToken)
        {
            var inquiry = await repository.GetInquiryByIdAsync(request.InquiryId);

            if (inquiry == null)
            {
                throw new Exception($"Client inquiry with ID {request.InquiryId} not found.");
            }

            return mapper.Map<ClientInquiryDto>(inquiry);
        }
    }
}
