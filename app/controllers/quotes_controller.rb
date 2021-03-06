class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  def like

    quotes = Quote.find(params[:id])

    current_user.liked_quotes.push(quotes)


    redirect_to quotes_path

  end


  def unlike

    quotes = Quote.find(params[:id])

    current_user.liked_quotes.destroy(quotes)


    redirect_to quotes_path

  end
  
  
  
  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.all

       @quotes = Quote.order('culprit_id DESC').reorder('date DESC')
  end

  # GET /quotes/1
  # GET /quotes/1.json
  def show

    @quotes = Quote.all
    
  end

  # GET /quotes/new
  def new
    @culprits = User.all
    @quote = Quote.new
  end

  # GET /quotes/1/edit
  def edit
    @culprits = User.all
  end

  # POST /quotes
  # POST /quotes.json
  def create
    @quote = Quote.new(quote_params)
    @culprit = User.find(@quote.culprit_id)
    @quote.culprit_image = @culprit.profile_picture

    

    respond_to do |format|
      if @quote.save
        format.html { redirect_to @quote, notice: 'Quote was successfully created.' }
        format.json { render :show, status: :created, location: @quote }
      else
        format.html { render :new }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to @quote, notice: 'Quote was successfully updated.' }
        format.json { render :show, status: :ok, location: @quote }
      else
        format.html { render :edit }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quote.destroy
    respond_to do |format|
      format.html { redirect_to quotes_url, notice: 'Quote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote

    @quote.upvote_from current_user
    redirect_to quotes_path
  end

  def downvote

    @quote.downvote_from current_user
    redirect_to quotes_path
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quote_params
      params.require(:quote).permit(:body, :culprit_id, :date, :image)
    end
end

