using Domain.Entities;
using Domain.Repositories;
using Infrastructure.Persistance;

namespace Infrastructure.Repositories
{
    public class UserRepository : IUserRepository
    {
        private readonly ApplicationDbContext context;
        public UserRepository(ApplicationDbContext context)
        {
            this.context = context;
        }
        public Task<IEnumerable<User>> GetAllUsersAsync()
        {
            throw new NotImplementedException();
        }
        public Task<User> GetUserByIdAsync(Guid id)
        {
            throw new NotImplementedException();
        }
        public Task<User> AddUserAsync(User user)
        {
            throw new NotImplementedException();
        }
        public Task UpdateUserAsync(User user)
        {
            throw new NotImplementedException();
        }
        public Task DeleteUserAsync(Guid id)
        {
            throw new NotImplementedException();
        }
    }
}
