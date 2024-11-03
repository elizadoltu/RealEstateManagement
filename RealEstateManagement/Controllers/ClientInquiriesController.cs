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
    }
}
