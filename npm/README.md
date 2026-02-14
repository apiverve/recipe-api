# Recipe Generator API

Recipe Generator is an AI-powered tool for generating detailed recipes. It returns complete recipes with ingredients, instructions, prep time, cook time, and servings.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)
[![npm version](https://img.shields.io/npm/v/@apiverve/recipe.svg)](https://www.npmjs.com/package/@apiverve/recipe)

This is a Javascript Wrapper for the [Recipe Generator API](https://apiverve.com/marketplace/recipe?utm_source=npm&utm_medium=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/recipe
```

Using yarn:
```shell
yarn add @apiverve/recipe
```

---

## Configuration

Before using the Recipe Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=readme)

The Recipe Generator API documentation is found here: [https://docs.apiverve.com/ref/recipe](https://docs.apiverve.com/ref/recipe?utm_source=npm&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const recipeAPI = require('@apiverve/recipe');
const api = new recipeAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  name: "chicken fajitas"
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  name: "chicken fajitas"
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  name: "chicken fajitas"
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "name": "Chicken Fajitas",
    "description": "A flavorful and easy-to-make dish with marinated chicken, bell peppers, and onions, served with warm tortillas and your favorite toppings.",
    "ingredients": [
      "1.5 pounds boneless, skinless chicken breasts, sliced into strips",
      "1 red bell pepper, sliced",
      "1 green bell pepper, sliced",
      "1 yellow bell pepper, sliced",
      "1 large onion, sliced",
      "2 tablespoons olive oil",
      "1 packet (1 ounce) fajita seasoning",
      "1/2 cup water",
      "12 flour tortillas",
      "Optional toppings: sour cream, guacamole, salsa, shredded cheese, chopped cilantro"
    ],
    "instructions": "1. In a bowl, combine the chicken strips with fajita seasoning and water. Marinate for at least 15 minutes.\n2. Heat olive oil in a large skillet or cast-iron pan over medium-high heat.\n3. Add the chicken and cook until browned and cooked through, about 5-7 minutes.\n4. Add the bell peppers and onion to the skillet. Cook, stirring occasionally, until softened, about 5-7 minutes.\n5. Warm the tortillas according to package directions.\n6. Serve the chicken and vegetables in warm tortillas with your favorite toppings.",
    "prep_time": "15 minutes",
    "cook_time": "20 minutes",
    "servings": 4
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=npm&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
