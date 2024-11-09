using Application.DTOs;
using Application.Use_Cases.ClientInquiries.Queries;
using AutoMapper;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.ClientInquiries.QueryHandler
{
    public class GetAllInquiriesQueryHandler : IRequestHandler<GetAllInquiriesQuery, List<ClientInquiryDto>>
    {
        private readonly IMapper _mapper;
        private readonly IClientInquiryRepository _repository;

        public GetAllInquiriesQueryHandler(IMapper mapper, IClientInquiryRepository repository)
        {
            _mapper = mapper;
            _repository = repository;
        }

        public async Task<List<ClientInquiryDto>> Handle(GetAllInquiriesQuery request, CancellationToken cancellationToken)
        {
            var inquiries = await _repository.GetAllInquiriesAsync();
            return inquiries.Select(inquiry => _mapper.Map<ClientInquiryDto>(inquiry)).ToList();
        }
    }
}
