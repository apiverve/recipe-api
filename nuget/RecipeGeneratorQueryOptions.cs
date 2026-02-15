using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.RecipeGenerator
{
    /// <summary>
    /// Query options for the Recipe Generator API
    /// </summary>
    public class RecipeGeneratorQueryOptions
    {
        /// <summary>
        /// The name or description of the recipe you want to generate
        /// </summary>
        [JsonProperty("name")]
        public string Name { get; set; }
    }
}
