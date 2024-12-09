using Application;
using Identity;
using Infrastructure;
<<<<<<< HEAD
using Infrastructure.Persistance;
=======
using Microsoft.OpenApi.Models;
>>>>>>> upstream/main

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
<<<<<<< HEAD
=======
builder.Services.AddIdentity(builder.Configuration);

builder.Services.AddControllers();
>>>>>>> upstream/main

// Add controllers and Swagger for API documentation
builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(c =>
{
    c.SwaggerDoc("v1", new OpenApiInfo { Title = "Your API", Version = "v1" });

    // Add JWT Authentication
    c.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
    {
        Name = "Authorization",
        Type = SecuritySchemeType.Http,
        Scheme = "Bearer",
        BearerFormat = "JWT",
        In = ParameterLocation.Header,
        Description = "JWT Authorization header using the Bearer scheme. Example: \"Authorization: Bearer {token}\""
    });

    c.AddSecurityRequirement(new OpenApiSecurityRequirement
    {
        {
            new OpenApiSecurityScheme
            {
                Reference = new OpenApiReference
                {
                    Type = ReferenceType.SecurityScheme,
                    Id = "Bearer"
                }
            },
            new string[] {}
        }
    });
});

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

<<<<<<< HEAD
// Dynamically set the hosting port for Railway
var port = Environment.GetEnvironmentVariable("PORT") ?? "5047";
app.Urls.Add($"http://*:{port}");
=======
app.UseRouting();

app.UseCors("MyAllowSpecificOrigins");

app.UseHttpsRedirection();

app.UseAuthentication();
app.UseAuthorization();

app.MapControllers();
>>>>>>> upstream/main

app.Run();

// Partial class for testing purposes
public partial class Program { }
