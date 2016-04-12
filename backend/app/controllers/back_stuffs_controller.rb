class BackStuffsController < ApplicationController
  before_action :set_back_stuff, only: [:show, :edit, :update, :destroy]

  # GET /back_stuffs
  def index
    @back_stuffs = BackStuff.all
  end

  # GET /back_stuffs/1
  def show
  end

  # GET /back_stuffs/new
  def new
    @back_stuff = BackStuff.new
  end

  # GET /back_stuffs/1/edit
  def edit
  end

  # POST /back_stuffs
  def create
    @back_stuff = BackStuff.new(back_stuff_params)

    if @back_stuff.save
      redirect_to @back_stuff, notice: 'Back stuff was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /back_stuffs/1
  def update
    if @back_stuff.update(back_stuff_params)
      redirect_to @back_stuff, notice: 'Back stuff was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /back_stuffs/1
  def destroy
    @back_stuff.destroy
    redirect_to back_stuffs_url, notice: 'Back stuff was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_back_stuff
      @back_stuff = BackStuff.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def back_stuff_params
      params.require(:back_stuff).permit(:back)
    end
end
