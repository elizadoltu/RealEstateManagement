namespace Domain.Entities
{
    public class User
    {
        public Guid UserId { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public List<PropertyListing> propertyListings { get; set; }
        public List<ClientInquiry> clientInquiries { get; set; }
        //public List<PropertyListing> favorites { get; set; }
    }
}
