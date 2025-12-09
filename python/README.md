Recipes API
============

Recipes is a simple tool for getting recipe information. It returns information on various recipes.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Recipes API](https://apiverve.com/marketplace/api/recipe)

---

## Installation
	pip install apiverve-recipes

---

## Configuration

Before using the recipe API client, you have to setup your account and obtain your API Key.  
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Usage

The Recipes API documentation is found here: [https://docs.apiverve.com/api/recipe](https://docs.apiverve.com/api/recipe).  
You can find parameters, example responses, and status codes documented here.

### Setup

```
# Import the client module
from apiverve_recipes.apiClient import RecipeAPIClient

# Initialize the client with your APIVerve API key
api = RecipeAPIClient("[YOUR_API_KEY]")
```

---


### Perform Request
Using the API client, you can perform requests to the API.

###### Define Query

```
query = { "name": "cake" }
```

###### Simple Request

```
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 1,
    "recipes": [
      {
        "instructions": "Heat the oil in a large, non-stick frying pan or wok and stir-fry the chicken and peppers for 2 mins. Sprinkle over the spices and cook for 30 secs more, stirring. Tip the tomatoes into the pan and stir in the chipotle paste. Simmer for 5 mins or until the sauce is thick and glossy, stirring regularly. Stir in the spring onions and coriander, cook for 1 min more, then remove from the heat and leave to cool. Cut the tortillas into quarters, then cut each quarter into three pieces, so you have 36 triangles. Place 1 tsp of the chicken mixture and a little cheese at the widest end of a triangle. Roll the pointed end of the triangle around the filling and secure with a cocktail stick. Place on a baking tray lined with baking parchment. Fill and roll the other triangles. Cover with cling film and chill for up to 8 hrs until ready to reheat. To make the dip, mash all the ingredients in a bowl until almost smooth. Cover the surface of the dip with cling film and chill for up to 24 hrs. When ready to serve, heat oven to 200C/180C fan/gas 6. Uncover the fajitas and bake for 6-8 mins or until hot throughout. Serve with the guacamole.",
        "name": "Mini Chicken Fajitas",
        "ingredients": [
          "2 tbsp sunflower oil",
          "2 skinless chicken breasts, cut into 1½ cm/½ in chunks",
          "1 red pepper, deseeded and cut into 1½ cm/½ in chunks",
          "1 yellow pepper, deseeded and cut into 1½ cm/½ in chunks",
          "1 tsp ground cumin",
          "1 tsp ground coriander",
          "¼ tsp hot chilli powder",
          "227g can chopped tomatoes",
          "2 tbsp chipotle paste",
          "4 spring onions, trimmed and thinly sliced",
          "large pack coriander, leaves chopped",
          "3 large flour tortillas",
          "75g ready-grated mozzarella",
          "1 ripe avocado, stoned and peeled",
          "juice 1 large lime",
          "1 garlic clove, crushed",
          "2 heaped tbsp finely chopped coriander",
          "36 cocktail sticks"
        ]
      }
    ]
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.