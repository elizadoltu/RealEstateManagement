namespace Application.DTOs
{
    public class ClientInquiryDto
    {
        public Guid InquiryId { get; set; }
        public Guid ClientId { get; set; }
        public List<Type> Types { get; set; }
        public double MinPrice { get; set; }
        public double MaxPrice { get; set; }
        public double MinSquareFootage { get; set; }
        public double MaxSquareFootage { get; set; }
        public double NumberOfBedrooms { get; set; }
        public double NumberOfBathrooms { get; set; }
    }
}
