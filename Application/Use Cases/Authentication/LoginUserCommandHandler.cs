using Domain.Entities;
using Domain.Repositories;
using MediatR;

public class LoginUserCommandHandler : IRequestHandler<LoginUserCommand, string>
{
    private readonly IUserAuthRepository userRepository;

    public LoginUserCommandHandler(IUserAuthRepository userRepository)
    {
        this.userRepository = userRepository;
    }

    public async Task<string> Handle(LoginUserCommand request, CancellationToken cancellationToken)
    {
        var user = new User
        {
            Email = request.Email,
            PasswordHash = request.Password
        };
        var token = await userRepository.Login(user);
        return token;
    }
}