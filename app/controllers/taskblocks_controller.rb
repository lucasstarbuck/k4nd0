class TaskblocksController < ApplicationController
  before_action :set_taskblock, only: [:show, :edit, :update, :destroy]

  # GET /taskblocks
  # GET /taskblocks.json
  def index
    @taskblocks = Taskblock.all
  end

  # GET /taskblocks/1
  # GET /taskblocks/1.json
  def show
  end

  # GET /taskblocks/new
  def new
    @taskblock = Taskblock.new
  end

  # GET /taskblocks/1/edit
  def edit
  end

  # POST /taskblocks
  # POST /taskblocks.json
  def create
    @taskblock = Taskblock.new(taskblock_params)

    respond_to do |format|
      if @taskblock.save
        format.html { redirect_to @taskblock, notice: 'Taskblock was successfully created.' }
        format.json { render action: 'show', status: :created, location: @taskblock }
      else
        format.html { render action: 'new' }
        format.json { render json: @taskblock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taskblocks/1
  # PATCH/PUT /taskblocks/1.json
  def update
    respond_to do |format|
      if @taskblock.update(taskblock_params)
        format.html { redirect_to @taskblock, notice: 'Taskblock was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @taskblock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskblocks/1
  # DELETE /taskblocks/1.json
  def destroy
    @taskblock.destroy
    respond_to do |format|
      format.html { redirect_to taskblocks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taskblock
      @taskblock = Taskblock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taskblock_params
      params.require(:taskblock).permit(:description)
    end
end
