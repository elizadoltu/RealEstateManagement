using Domain.Repositories;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using Domain.Entities;

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
    }
}
