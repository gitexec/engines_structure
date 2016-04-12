class FrontStuffsController < ApplicationController
  before_action :set_front_stuff, only: [:show, :edit, :update, :destroy]

  # GET /front_stuffs
  def index
    @front_stuffs = FrontStuff.all
  end

  # GET /front_stuffs/1
  def show
  end

  # GET /front_stuffs/new
  def new
    @front_stuff = FrontStuff.new
  end

  # GET /front_stuffs/1/edit
  def edit
  end

  # POST /front_stuffs
  def create
    @front_stuff = FrontStuff.new(front_stuff_params)

    if @front_stuff.save
      redirect_to @front_stuff, notice: 'Front stuff was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /front_stuffs/1
  def update
    if @front_stuff.update(front_stuff_params)
      redirect_to @front_stuff, notice: 'Front stuff was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /front_stuffs/1
  def destroy
    @front_stuff.destroy
    redirect_to front_stuffs_url, notice: 'Front stuff was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_front_stuff
      @front_stuff = FrontStuff.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def front_stuff_params
      params.require(:front_stuff).permit(:front)
    end
end
