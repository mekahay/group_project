class QuotesController < ApplicationController

  # GET /quotes
  def index
    @quotes = Quote.all

    render json: @quotes.to_json(include: :user)

  end

  # GET /quotes/1
  def show
    quote = Quote.find(params[:id])
    render(json: { quote: quote })
  end

  # POST /quotes
  def create
    quote = Quote.new(quote_params)
    quote.user_id = params[:user_id]
    if quote.save
      render json: { quote: quote }
    else
      render(status: 422, json: { quote:quote, errors: quote.errors })
    end
  end

  # PATCH/PUT /quotes/1
  def update
    quote = Quote.find(params[:id])
    if quote.update(quote_params)
        render(status: 200, json: { quote:quote, errors: quote.errors })
    else
        render(status: 422, json: { quote:quote, errors: quote.errors })
    end
  end

  # DELETE /quotes/1
  def destroy
    quote = Quote.find(params[:id])
    if tweet.destroy
      render(status: 204)
    else
      render(status: 422, json: { tweet:tweet, errors: tweet.errors })
    end
  end

  private
  
  def quote_params
    params.require(:quote).permit(:text, :mood)
  end

end
