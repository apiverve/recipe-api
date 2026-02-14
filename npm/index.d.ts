declare module '@apiverve/recipe' {
  export interface recipeOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface recipeResponse {
    status: string;
    error: string | null;
    data: RecipeGeneratorData;
    code?: number;
  }


  interface RecipeGeneratorData {
      name:         string;
      description:  string;
      ingredients:  string[];
      instructions: string;
      prepTime:     string;
      cookTime:     string;
      servings:     number;
  }

  export default class recipeWrapper {
    constructor(options: recipeOptions);

    execute(callback: (error: any, data: recipeResponse | null) => void): Promise<recipeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: recipeResponse | null) => void): Promise<recipeResponse>;
    execute(query?: Record<string, any>): Promise<recipeResponse>;
  }
}
