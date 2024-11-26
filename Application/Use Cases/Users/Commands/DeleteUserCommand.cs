using Domain.Common;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Application.Use_Cases.Users.Commands
{
    public class DeleteUserCommand : IRequest<Result<Guid>>
    {
        public Guid UserId { get; set; }
    }
}
