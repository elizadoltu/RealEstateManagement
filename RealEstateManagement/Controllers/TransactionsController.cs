using Domain.Repositories;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using Domain.Entities;
using Application.DTOs;
using Application.Use_Cases.Queries;
using Microsoft.AspNetCore.Components.Forms;
using Application.Use_Cases.Transactions.Queries;
using Domain.Common;

namespace RealEstateManagement.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TransactionsController : ControllerBase
    {
        private readonly IMediator _mediator;
        private readonly ITransactionRepository _transactionRepository;

        public TransactionsController(IMediator mediator, ITransactionRepository transactionRepository)
        {
            _mediator = mediator;
            _transactionRepository = transactionRepository;
        }

        [HttpPost]
        public async Task<ActionResult<Transaction>> AddTransaction(Transaction transaction)
        {
            var createdTransaction = await _transactionRepository.AddTransactionAsync(transaction);
            return CreatedAtAction(nameof(AddTransaction), new { id = createdTransaction.TransactionId }, createdTransaction);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> UpdateTransaction(Guid id, Transaction transaction)
        {
            if (id != transaction.TransactionId)
            {
                return BadRequest();
            }

            try
            {
                await _transactionRepository.UpdateTransactionAsync(transaction);
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("not found"))
                {
                    return NotFound();
                }
                throw;
            }

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteTransaction(Guid id)
        {
            try
            {
                await _transactionRepository.DeleteTransactionAsync(id);
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("not found"))
                {
                    return NotFound();
                }
                throw;
            }

            return NoContent();
        }

        [HttpGet]
        public async Task<ActionResult<Result<List<TransactionDto>>>> GetAllTransactions()
        {
            var result = await _mediator.Send(new GetAllTransactionsQuery());
            if (result.IsSuccess)
            {
                return Ok(result.Data);
            }
            else
            {
                return BadRequest(result.ErrorMessage);
            }
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<TransactionDto>> GetTransactionById(Guid id)
        {
            var result = await _mediator.Send(new GetTransactionByIdQuery { TransactionId = id });
            if (result.IsSuccess)
            {
                return Ok(result.Data);
            }
            else
            {
                return BadRequest(result.ErrorMessage);
            }
        }

    }
}
