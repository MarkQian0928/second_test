class HappiesController < ApplicationController
  before_action :set_happy, only: [:show, :edit, :update, :destroy]

  # GET /happies
  # GET /happies.json
  def index
    @happies = Happy.all
  end

  # GET /happies/1
  # GET /happies/1.json
  def show
  end

  # GET /happies/new
  def new
    @happy = Happy.new
  end

  # GET /happies/1/edit
  def edit
  end

  # POST /happies
  # POST /happies.json
  def create
    @happy = Happy.new(happy_params)

    respond_to do |format|
      if @happy.save
        format.html { redirect_to @happy, notice: 'Happy was successfully created.' }
        format.json { render :show, status: :created, location: @happy }
      else
        format.html { render :new }
        format.json { render json: @happy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /happies/1
  # PATCH/PUT /happies/1.json
  def update
    respond_to do |format|
      if @happy.update(happy_params)
        format.html { redirect_to @happy, notice: 'Happy was successfully updated.' }
        format.json { render :show, status: :ok, location: @happy }
      else
        format.html { render :edit }
        format.json { render json: @happy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /happies/1
  # DELETE /happies/1.json
  def destroy
    @happy.destroy
    respond_to do |format|
      format.html { redirect_to happies_url, notice: 'Happy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_happy
      @happy = Happy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def happy_params
      params.require(:happy).permit(:content, :user_id)
    end
end
