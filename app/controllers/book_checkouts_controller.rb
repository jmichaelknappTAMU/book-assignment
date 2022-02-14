
class BookCheckoutsController < ApplicationController
  before_action :set_book_checkout, only: %i[ show edit update destroy ]

  # GET /book_checkouts or /book_checkouts.json
  def index
    @book_checkouts = BookCheckout.all
  end

  # GET /book_checkouts/1 or /book_checkouts/1.json
  def show
  end

  # GET /book_checkouts/new
  def new
    @book_checkout = BookCheckout.new
		@books = Book.all
		@users = User.all
  end

  # GET /book_checkouts/1/edit
  def edit
  end

  # POST /book_checkouts or /book_checkouts.json
  def create
    @book_checkout = BookCheckout.new(book_checkout_params)

    respond_to do |format|
      if @book_checkout.save
        format.html { redirect_to book_checkout_url(@book_checkout), notice: "Book checkout was successfully created." }
        format.json { render :show, status: :created, location: @book_checkout }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_checkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_checkouts/1 or /book_checkouts/1.json
  def update
    respond_to do |format|
      if @book_checkout.update(book_checkout_params)
        format.html { redirect_to book_checkout_url(@book_checkout), notice: "Book checkout was successfully updated." }
        format.json { render :show, status: :ok, location: @book_checkout }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_checkout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_checkouts/1 or /book_checkouts/1.json
  def destroy
    @book_checkout.destroy

    respond_to do |format|
      format.html { redirect_to book_checkouts_url, notice: "Book checkout was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_checkout
      @book_checkout = BookCheckout.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_checkout_params
      params.require(:book_checkout).permit(:user_id, :book_id)
    end
end
