declare module '@apiverve/recipe' {
  export interface recipeOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface recipeResponse {
    status: string;
    error: string | null;
    data: RecipesData;
    code?: number;
  }


  interface RecipesData {
      count:   number;
      recipes: Recipe[];
  }
  
  interface Recipe {
      instructions: string;
      name:         string;
      ingredients:  string[];
  }

  export default class recipeWrapper {
    constructor(options: recipeOptions);

    execute(callback: (error: any, data: recipeResponse | null) => void): Promise<recipeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: recipeResponse | null) => void): Promise<recipeResponse>;
    execute(query?: Record<string, any>): Promise<recipeResponse>;
  }
}
