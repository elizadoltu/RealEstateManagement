using Application.DTOs;
using Application.Use_Cases.Commands;
using Application.Use_Cases.Queries;
using Domain.Entities;
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
        [HttpPut("{id:guid}")]
        public async Task<ActionResult<Unit>> UpdatePropertyListing(Guid id, UpdatePropertyListingCommand command)
        {
            if (id != command.PropertyId)
            {
                return BadRequest();
            }
            await mediator.Send(command);
            return NoContent();
        }
        [HttpGet("{id:guid}")]
        public async Task<ActionResult<PropertyListingDTO>> GetListingByIdAsync(Guid id)
        {
            var result = await mediator.Send(new GetListingByIdQuery { PropertyId = id });
            return Ok(result);
        }

    }
}
