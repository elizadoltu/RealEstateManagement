using Application.Use_Cases.ClientInquiries.Commands;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace RealEstateManagement.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ClientInquiriesController : ControllerBase
    {
        private readonly IMediator mediator;
        public ClientInquiriesController(IMediator mediator)
        {
            this.mediator = mediator;
        }

        [HttpPost]
        public async Task<IActionResult> CreateInquiry([FromBody] CreateClientInquiryCommand command)
        {
            var result = await mediator.Send(command);
            if (result.IsSuccess)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.ErrorMessage);
        }
    }
}
