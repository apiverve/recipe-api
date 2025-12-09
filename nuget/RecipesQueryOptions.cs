using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.Recipes
{
    /// <summary>
    /// Query options for the Recipes API
    /// </summary>
    public class RecipesQueryOptions
    {
        /// <summary>
        /// The name of the recipe to get information about
        /// Example: cake
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }
    }
}
