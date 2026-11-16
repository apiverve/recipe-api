# Recipe Generator API - Dart/Flutter Client

Recipe Generator creates complete cooking recipes from a dish title or meal idea. Pass any dish name to get structured ingredients with quantities, step-by-step instructions, prep time, cook time, and serving counts.

[![pub package](https://img.shields.io/pub/v/apiverve_recipe.svg)](https://pub.dev/packages/apiverve_recipe)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Recipe Generator API](https://apiverve.com/marketplace/recipe?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_recipe: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_recipe/apiverve_recipe.dart';

void main() async {
  final client = RecipeClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'name': 'chicken fajitas'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Recipe Generator API](https://apiverve.com/marketplace/recipe?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/recipe](https://docs.apiverve.com/ref/recipe?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
