module RecipesHelper
  # spoonacular api base url
  BASE_URL = "https://api.spoonacular.com/recipes/search?query="

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
end
