﻿using Domain.Common;
using Domain.Entities;
using Domain.Repositories;
using Infrastructure.Persistance;
using Microsoft.EntityFrameworkCore;
using System.Reflection;
namespace Infrastructure.Repositories
{
    public class UserRepository : IUserRepository
    {
        private readonly ApplicationDbContext context;
        public UserRepository(ApplicationDbContext context)
        {
            this.context = context;
        }
        public async Task<Result<IEnumerable<User>>> GetAllUsersAsync()
        {
            try
            {
                var users = await context.Users.ToListAsync();
                return Result<IEnumerable<User>>.Success(users);
            }
            catch (Exception ex)
            {
                return Result<IEnumerable<User>>.Failure($"An error occurred while retrieving users: {ex.Message}");
            }
        }
        public async Task<Result<User>> GetUserByIdAsync(Guid id)
        {
            try
            {
                var user = await context.Users.FindAsync(id);
                return Result<User>.Success(user);
            }
            catch (Exception ex)
            {
                return Result<User>.Failure($"An error occurred while retrieving user: {ex.Message}");
            }

        }
        public async Task<Result<Guid>> AddUserAsync(User user)
        {
            try
            {
                await context.Users.AddAsync(user);
                await context.SaveChangesAsync();
                return Result<Guid>.Success(user.UserId);
            }
            catch (Exception ex)
            {
                return Result<Guid>.Failure(ex.InnerException!.ToString());
            }
        }
        public async Task<Result<Guid>> UpdateUserAsync(User user)
        {
            try
            {
                var existingUser = await context.Users.FindAsync(user.UserId);
                if (existingUser != null)
                {
                    context.Entry(existingUser).CurrentValues.SetValues(user);
                    await context.SaveChangesAsync();

                    return Result<Guid>.Success(user.UserId);
                }
                else
                {
                    return Result<Guid>.Failure("User not found.");
                }
            }
            catch (Exception ex)
            {
                var errorMessage = ex.InnerException != null ? ex.InnerException.Message : ex.Message;
                return Result<Guid>.Failure(errorMessage);
            }
        }
        public async Task<Result<Guid>> DeleteUserAsync(Guid id)
        {
            try
            {
                var user = await context.Users.FindAsync(id);
                if (user != null)
                {
                    context.Users.Remove(user);
                    await context.SaveChangesAsync();
                    return Result<Guid>.Success(id);
                }
                return Result<Guid>.Failure("User not found");
            }
            catch (Exception ex)
            {
                return Result<Guid>.Failure(ex.InnerException!.ToString());
            }
        }

        public async Task<Result<IEnumerable<PropertyListing>>> GetListingsByUserId(Guid userId)
        {
            //return (IEnumerable<PropertyListing>)await context.PropertyListings.FindAsync(userId);
            throw new NotImplementedException();
        }
        public async Task<Result<IEnumerable<ClientInquiry>>> GetClientInquiriesByUserId(Guid userId)
        {
            //return (IEnumerable<ClientInquiry>)await context.ClientInquiries.FindAsync(userId);
            throw new NotImplementedException();
        }
    }
}
