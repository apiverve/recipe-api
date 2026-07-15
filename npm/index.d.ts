declare module '@apiverve/recipe' {
  export interface recipeOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface recipeResponse {
    status: string;
    error: string | null;
    data: RecipeGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface RecipeGeneratorData {
      name:         null | string;
      description:  null | string;
      ingredients:  (null | string)[];
      instructions: null | string;
      prepTime:     null | string;
      cookTime:     null | string;
      servings:     number | null;
  }

  export default class recipeWrapper {
    constructor(options: recipeOptions);

    execute(callback: (error: any, data: recipeResponse | null) => void): Promise<recipeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: recipeResponse | null) => void): Promise<recipeResponse>;
    execute(query?: Record<string, any>): Promise<recipeResponse>;
  }
}
