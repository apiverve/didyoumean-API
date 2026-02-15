using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.DidYouMean
{
    /// <summary>
    /// Query options for the Did You Mean API
    /// </summary>
    public class DidYouMeanQueryOptions
    {
        /// <summary>
        /// The text you want to check for spelling mistakes
        /// </summary>
        [JsonProperty("query")]
        public string Query { get; set; }
    }
}
