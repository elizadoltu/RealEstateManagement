using Application;
using Infrastructure;
using Infrastructure.Persistance;

var builder = WebApplication.CreateBuilder(args);

// Define the CORS policy name
var MyAllowSpecificOrigins = "MyAllowSpecificOrigins";

// Configure services
builder.Services.AddCors(options =>
{
    options.AddPolicy(name: MyAllowSpecificOrigins, policy =>
    {
        policy.WithOrigins(
            "http://localhost:4200", // Local testing
            "https://realio-five.vercel.app/" // Production frontend
        )
        .AllowAnyHeader()
        .AllowAnyMethod();
    });
});

// Add application and infrastructure layers
builder.Services.AddApplication();
builder.Services.AddInfrastructure(builder.Configuration);

// Add controllers and Swagger for API documentation
builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Apply migrations on startup (if using Entity Framework)
using (var scope = app.Services.CreateScope())
{
    var dbContext = scope.ServiceProvider.GetRequiredService<ApplicationDbContext>();
    //dbContext.Database.Migrate();
}

// Configure middleware for the app
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI(c =>
    {
        c.SwaggerEndpoint("/swagger/v1/swagger.json", "RealEstateManagement API V1");
        c.RoutePrefix = string.Empty; // Serve Swagger UI at the root
    });
}

app.UseHttpsRedirection(); // Redirect HTTP to HTTPS
app.UseRouting(); // Enable routing
app.UseCors(MyAllowSpecificOrigins); // Apply CORS policy
app.MapControllers(); // Map controllers

// Dynamically set the hosting port for Railway
var port = Environment.GetEnvironmentVariable("PORT") ?? "5047";
app.Urls.Add($"http://*:{port}");

app.Run();

// Partial class for testing purposes
public partial class Program { }
