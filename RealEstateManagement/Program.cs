using Application;
using Infrastructure;

var builder = WebApplication.CreateBuilder(args);

var MyAllowSpecificOrigins = "MyAllowSpecificOrigins";
var port = Environment.GetEnvironmentVariable("PORT") ?? "5000";
builder.WebHost.UseUrls($"http://*:{port}");

builder.Services.AddCors(options =>
{
    options.AddPolicy(name: MyAllowSpecificOrigins,
                      policy =>
                      {
                          policy.WithOrigins("http://localhost:4200");
                          policy.AllowAnyHeader();
                          policy.AllowAnyMethod();
                      });
});

builder.Services.AddApplication();
builder.Services.AddInfrastructure(builder.Configuration);
builder.Services.AddControllers();

// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.WebHost.UseContentRoot(Directory.GetCurrentDirectory());


var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseStaticFiles();

app.UseRouting();

app.UseCors("MyAllowSpecificOrigins");

// app.UseHttpsRedirection();

app.MapControllers();

app.Run();

public partial class Program
{
}