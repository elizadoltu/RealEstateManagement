using Domain.Entities;

namespace Domain.Repositories
{
    public interface IUserAuthRepository
    {
        Task<Guid> Register(User user, CancellationToken cancellationToken);
        Task<string> Login(User user);
    }
}
