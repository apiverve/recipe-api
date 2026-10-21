# Recipe Generator API - PHP Package

Recipe Generator creates complete cooking recipes from a dish title or meal idea. Pass any dish name to get structured ingredients with quantities, step-by-step instructions, prep time, cook time, and serving counts.

## Installation

Install via Composer:

```bash
composer require apiverve/recipe
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Recipe\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['name' => 'chicken fajitas']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Recipe\Client;
use APIVerve\Recipe\Exceptions\APIException;
use APIVerve\Recipe\Exceptions\ValidationException;

try {
    $response = $client->execute(['name' => 'chicken fajitas']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/recipe?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/recipe?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/recipe?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
