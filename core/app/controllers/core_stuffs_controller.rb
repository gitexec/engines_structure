class CoreStuffsController < ApplicationController
  before_action :set_core_stuff, only: [:show, :edit, :update, :destroy]

  # GET /core_stuffs
  def index
    @core_stuffs = CoreStuff.all
  end

  # GET /core_stuffs/1
  def show
  end

  # GET /core_stuffs/new
  def new
    @core_stuff = CoreStuff.new
  end

  # GET /core_stuffs/1/edit
  def edit
  end

  # POST /core_stuffs
  def create
    @core_stuff = CoreStuff.new(core_stuff_params)

    if @core_stuff.save
      redirect_to @core_stuff, notice: 'Core stuff was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /core_stuffs/1
  def update
    if @core_stuff.update(core_stuff_params)
      redirect_to @core_stuff, notice: 'Core stuff was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /core_stuffs/1
  def destroy
    @core_stuff.destroy
    redirect_to core_stuffs_url, notice: 'Core stuff was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_core_stuff
      @core_stuff = CoreStuff.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def core_stuff_params
      params.require(:core_stuff).permit(:core)
    end
end
