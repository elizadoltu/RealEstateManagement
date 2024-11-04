using Application.Use_Cases.Commands;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace RealEstateManagement.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PropertyListingsController : ControllerBase
    {
        private readonly IMediator mediator;

        public PropertyListingsController(IMediator mediator)
        {
            this.mediator = mediator;
        }

        [HttpPost]
        public async Task<ActionResult<Guid>> CreatePropertyListing(CreatePropertyListingCommand command)
        {
            return await mediator.Send(command);
        }
    }
}
