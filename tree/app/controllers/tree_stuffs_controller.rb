class TreeStuffsController < ApplicationController
  before_action :set_tree_stuff, only: [:show, :edit, :update, :destroy]

  # GET /tree_stuffs
  def index
    @tree_stuffs = TreeStuff.all
  end

  # GET /tree_stuffs/1
  def show
  end

  # GET /tree_stuffs/new
  def new
    @tree_stuff = TreeStuff.new
  end

  # GET /tree_stuffs/1/edit
  def edit
  end

  # POST /tree_stuffs
  def create
    @tree_stuff = TreeStuff.new(tree_stuff_params)

    if @tree_stuff.save
      redirect_to @tree_stuff, notice: 'Tree stuff was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tree_stuffs/1
  def update
    if @tree_stuff.update(tree_stuff_params)
      redirect_to @tree_stuff, notice: 'Tree stuff was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tree_stuffs/1
  def destroy
    @tree_stuff.destroy
    redirect_to tree_stuffs_url, notice: 'Tree stuff was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tree_stuff
      @tree_stuff = TreeStuff.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tree_stuff_params
      params.require(:tree_stuff).permit(:tree)
    end
end
