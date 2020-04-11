module RecipesHelper
  # spoonacular api base url
  BASE_URL = "https://api.spoonacular.com"
  RECIPE_SEARCH_URL = "#{BASE_URL}/recipes/search?query="
  RECIPE_INFORMATION_URL = "#{BASE_URL}/recipes/477032/information?includeNutrition=false"

  # Image sizes that are available via the spoonacular api
  IMAGE_SIZES = {
    thumbnail: "90x90",
    xsmall: "240x150",
    small: "312x150",
    medium: "312x231",
    large: "480x360",
    xlarge: "556x370",
    source: "636x393"
  }

  # builds an image tag based on spoonacular requirements
  # https://spoonacular.com/food-api/docs#Show-Images
  def image_for(id, size=:source)
    image_tag "https://spoonacular.com/recipeImages/#{id}-#{IMAGE_SIZES[size]}"
  end

  # returns recipes that contain the given search term, number of results can be between 1-100
  def recipe_search_results_for(search, number=100)
    Faraday.get "#{RECIPE_SEARCH_URL}#{search}&number=#{number}&apiKey=#{spoonacular_key}"
  end

  # retrieve recipe, returns faraday response object parsed as json
  def recipe_info_for(id)
    response = Faraday.get("https://api.spoonacular.com/recipes/#{id}/information?includeNutrition=true&apiKey=#{spoonacular_key}")
    JSON.parse response.body
  end

  private
  def spoonacular_key
    Rails.application.credentials.spoonacular[:api_key]
  end
 
end
