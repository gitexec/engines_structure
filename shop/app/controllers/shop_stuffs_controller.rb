class ShopStuffsController < ApplicationController
  before_action :set_shop_stuff, only: [:show, :edit, :update, :destroy]

  # GET /shop_stuffs
  def index
    @shop_stuffs = ShopStuff.all
  end

  # GET /shop_stuffs/1
  def show
  end

  # GET /shop_stuffs/new
  def new
    @shop_stuff = ShopStuff.new
  end

  # GET /shop_stuffs/1/edit
  def edit
  end

  # POST /shop_stuffs
  def create
    @shop_stuff = ShopStuff.new(shop_stuff_params)

    if @shop_stuff.save
      redirect_to @shop_stuff, notice: 'Shop stuff was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /shop_stuffs/1
  def update
    if @shop_stuff.update(shop_stuff_params)
      redirect_to @shop_stuff, notice: 'Shop stuff was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /shop_stuffs/1
  def destroy
    @shop_stuff.destroy
    redirect_to shop_stuffs_url, notice: 'Shop stuff was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_stuff
      @shop_stuff = ShopStuff.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def shop_stuff_params
      params.require(:shop_stuff).permit(:shop)
    end
end
