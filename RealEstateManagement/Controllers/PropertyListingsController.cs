﻿using Application.DTOs;
using Application.Use_Cases.Commands;
using Application.Use_Cases.PropertyListings.Queries;
using Application.Use_Cases.Queries;
using Application.Utils;
using Domain.Common;
using Domain.Entities;
using MediatR;
using Microsoft.AspNetCore.Authorization;
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
        [Authorize]
        public async Task<ActionResult<Result<Guid>>> CreatePropertyListing(CreatePropertyListingCommand command)
        {
            var result = await mediator.Send(command);
            if (result.IsSuccess)
            {
                return Ok(result.Data);
            }
            else
            {
                return BadRequest(result.ErrorMessage);
            }
        }
        [HttpPut("{id:guid}")]
        public async Task<ActionResult<Result<Unit>>> UpdatePropertyListing(Guid id, UpdatePropertyListingCommand command)
        {
            if (id != command.PropertyId)
            {
                return BadRequest();
            }
            var result = await mediator.Send(command);
            if (result.IsSuccess)
            {
                return NoContent();
            } else
            {
                return BadRequest(result.ErrorMessage);
            }

        }
        [HttpGet("{id:guid}")]
        public async Task<ActionResult<PropertyListingDto>> GetListingByIdAsync(Guid id)
        {
            var result = await mediator.Send(new GetListingByIdQuery { PropertyId = id });
            return Ok(result);
        }

        [HttpGet]
        public async Task<ActionResult<List<PropertyListingDto>>> GetAllPropertyListingsAsync()
        {
            var result = await mediator.Send(new GetAllPropertyListingQuery());
            return Ok(result);
        }

        [HttpDelete("{id:guid}")]
        public async Task<IActionResult> DeletePropertyListing(Guid id)
        {
            var result = await mediator.Send(new DeletePropertyListingCommand { PropertyId = id });
            if (result.IsSuccess) 
            {
                return NoContent();
            }
            else
            {
                return BadRequest(result.ErrorMessage);
            }
        }

        [HttpGet("paginated")]
        public async Task<ActionResult<PagedResult<PropertyListingDto>>> GetFilteredPropertyListings([FromQuery] int page, [FromQuery] int pageSize, [FromQuery] string? Type, [FromQuery] double price, [FromQuery] double nrOfBathrooms, [FromQuery] double nrOfBedrooms, [FromQuery] string? status, [FromQuery] double squareFootage)
        {
            var query = new GetFilteredPropertyListingsQuery
            {
                Page = page,
                PageSize = pageSize,
                Type = Type,
                Price = price,
                NumberOfBathrooms = nrOfBathrooms,
                NumberOfBedrooms = nrOfBedrooms,
                Status = status,
                SquareFootage = squareFootage
            };
            var result = await mediator.Send(query);
            return Ok(result);
        }

    }
}
