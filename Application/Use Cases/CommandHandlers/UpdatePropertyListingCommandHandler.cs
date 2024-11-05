using Application.Use_Cases.Commands;
using Domain.Repositories;
using MediatR;

namespace Application.Use_Cases.CommandHandlers
{
    public class UpdatePropertyListingCommandHandler : IRequestHandler<UpdatePropertyListingCommand, Unit>
    {
        private readonly IPropertyListingRepository repository;

        public UpdatePropertyListingCommandHandler(IPropertyListingRepository repository)
        {
            this.repository = repository;
        }

        public async Task<Unit> Handle(UpdatePropertyListingCommand request, CancellationToken cancellationToken)
        {
            var listing = await repository.GetListingByIdAsync(request.PropertyId);

            if (listing == null)
            {
                throw new Exception($"Property listing with ID {request.PropertyId} not found.");
            }

            // Update properties
            listing.Address = request.Address;
            listing.Type = request.Type;
            listing.Price = request.Price;
            listing.SquareFootage = request.SquareFootage;
            listing.NumberOfBedrooms = request.NumberOfBedrooms;
            listing.NumberOfBathrooms = request.NumberOfBathrooms;
            listing.Description = request.Description;
            listing.Status = request.Status;
            listing.ListingDate = request.ListingDate;
            listing.ImageURLs = request.ImageURLs;

            // Save changes
            await repository.UpdateListingAsync(listing);

            return Unit.Value;
        }
    }
}
