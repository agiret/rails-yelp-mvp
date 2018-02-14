class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])

    # # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = @restaurant
    # @review.save
    # redirect_to restaurant_path(@restaurant)
    p @review

    respond_to do |format|
      if @review.save
        p "coucoucoucocu"
        format.html { redirect_to @restaurant, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant }
      else
        p "totototototototo"
        p @review.errors
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
  end

  def update
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
