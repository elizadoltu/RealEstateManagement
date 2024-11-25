using MediatR;

namespace Application.Use_Cases.Transactions.Commands
{
    public class AddTransactionCommand : IRequest<Guid>
    {
        public Guid PropertyId { get; set; }
        public Guid BuyerId { get; set; }
        public Guid SellerId { get; set; }
        public double SalePrice { get; set; }
        public string Status { get; set; }
    }
}
