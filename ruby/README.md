# Recipe Generator API - Ruby Gem

Recipe Generator creates complete cooking recipes from a dish title or meal idea. Pass any dish name to get structured ingredients with quantities, step-by-step instructions, prep time, cook time, and serving counts.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_recipe'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_recipe
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_recipe'

# Initialize the client
client = APIVerve::Recipe::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ name: "chicken fajitas" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ name: "chicken fajitas" })
  puts response["data"]
rescue APIVerve::Recipe::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Recipe::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Recipe::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "name": "Chicken Fajitas",
    "description": "A flavorful and easy-to-make dish with marinated chicken, bell peppers, and onions, served with warm tortillas.",
    "ingredients": [
      "1.5 pounds boneless, skinless chicken breasts, sliced",
      "1 red bell pepper, sliced",
      "1 green bell pepper, sliced",
      "1 large onion, sliced",
      "2 tablespoons olive oil",
      "1 packet (1 ounce) fajita seasoning",
      "1/2 cup water",
      "12 flour tortillas",
      "Optional toppings: sour cream, guacamole, salsa, shredded cheese"
    ],
    "instructions": "1. In a bowl, combine chicken with fajita seasoning and water. Marinate for at least 15 minutes.\n2. Heat olive oil in a large skillet or cast-iron pan over medium-high heat.\n3. Add the chicken and cook until browned and cooked through, about 5-7 minutes.\n4. Add bell peppers and onions to the skillet. Cook until softened, about 5-7 minutes.\n5. Warm tortillas according to package instructions.\n6. Serve chicken and vegetables in warm tortillas with desired toppings.",
    "prep_time": "15 minutes",
    "cook_time": "20 minutes",
    "servings": 4
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/recipe?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/recipe?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/recipe?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
