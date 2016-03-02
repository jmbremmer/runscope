class AlfredsController < ApplicationController
  before_action :set_alfred, only: [:show, :edit, :update, :destroy]

  # GET /alfreds
  # GET /alfreds.json
  def index
    @alfreds = Alfred.all
  end

  # GET /alfreds/1
  # GET /alfreds/1.json
  def show
  end

  # GET /alfreds/new
  def new
    @alfred = Alfred.new
  end

  # GET /alfreds/1/edit
  def edit
  end

  # POST /alfreds
  # POST /alfreds.json
  def create
    @alfred = Alfred.new(alfred_params)

    respond_to do |format|
      if @alfred.save
        format.html { redirect_to @alfred, notice: 'Alfred was successfully created.' }
        format.json { render :show, status: :created, location: @alfred }
      else
        format.html { render :new }
        format.json { render json: @alfred.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alfreds/1
  # PATCH/PUT /alfreds/1.json
  def update
    respond_to do |format|
      if @alfred.update(alfred_params)
        format.html { redirect_to @alfred, notice: 'Alfred was successfully updated.' }
        format.json { render :show, status: :ok, location: @alfred }
      else
        format.html { render :edit }
        format.json { render json: @alfred.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alfreds/1
  # DELETE /alfreds/1.json
  def destroy
    @alfred.destroy
    respond_to do |format|
      format.html { redirect_to alfreds_url, notice: 'Alfred was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alfred
      @alfred = Alfred.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alfred_params
      params.require(:alfred).permit(:alfred)
    end
end
