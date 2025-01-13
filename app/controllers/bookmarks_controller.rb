class BookmarksController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
    @recipes = Recipe.all # Allows user to select from all recipes
  end

  def create
    @category = Category.find(params[:category_id])
    @bookmark = @category.bookmarks.build(bookmark_params)

    if @bookmark.save
      redirect_to category_path(@category), notice: "Recipe successfully added to the category!"
    else
      @recipes = Recipe.all
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(params[:category_id]), notice: "Recipe successfully removed from the category!"
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:recipe_id, :comment)
  end

end
