class SplittersController < ApplicationController
  before_action :set_splitter, only: [:show, :edit, :update, :destroy]

  # GET /splitters
  # GET /splitters.json
  def index
    @splitters = Splitter.all
  end

  # GET /splitters/1
  # GET /splitters/1.json
  def show
  end

  # GET /splitters/new
  def new
    @splitter = Splitter.new
  end

  # GET /splitters/1/edit
  def edit
  end

  # POST /splitters
  # POST /splitters.json
  def create
    @splitter = Splitter.new(splitter_params)

    respond_to do |format|
      if @splitter.save
        format.html { redirect_to @splitter, notice: 'Splitter was successfully created.' }
        format.json { render :show, status: :created, location: @splitter }
      else
        format.html { render :new }
        format.json { render json: @splitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /splitters/1
  # PATCH/PUT /splitters/1.json
  def update
    respond_to do |format|
      if @splitter.update(splitter_params)
        format.html { redirect_to @splitter, notice: 'Splitter was successfully updated.' }
        format.json { render :show, status: :ok, location: @splitter }
      else
        format.html { render :edit }
        format.json { render json: @splitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /splitters/1
  # DELETE /splitters/1.json
  def destroy
    @splitter.destroy
    respond_to do |format|
      format.html { redirect_to splitters_url, notice: 'Splitter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_splitter
      @splitter = Splitter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def splitter_params
      params.fetch(:splitter, {})
    end
end
