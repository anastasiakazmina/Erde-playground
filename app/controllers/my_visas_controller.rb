class MyVisasController < ApplicationController
  before_action :set_my_visa, only: [:show, :edit, :update, :destroy]

  # GET /my_visas
  # GET /my_visas.json
  def index
    @my_visas = MyVisa.all
  end

  # GET /my_visas/1
  # GET /my_visas/1.json
  def show
  end

  # GET /my_visas/new
  def new
    @my_visa = MyVisa.new
  end

  # GET /my_visas/1/edit
  def edit
  end

  # POST /my_visas
  # POST /my_visas.json
  def create
    @my_visa = MyVisa.new(my_visa_params)

    respond_to do |format|
      if @my_visa.save
        format.html { redirect_to @my_visa, notice: 'My visa was successfully created.' }
        format.json { render :show, status: :created, location: @my_visa }
      else
        format.html { render :new }
        format.json { render json: @my_visa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_visas/1
  # PATCH/PUT /my_visas/1.json
  def update
    respond_to do |format|
      if @my_visa.update(my_visa_params)
        format.html { redirect_to @my_visa, notice: 'My visa was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_visa }
      else
        format.html { render :edit }
        format.json { render json: @my_visa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_visas/1
  # DELETE /my_visas/1.json
  def destroy
    @my_visa.destroy
    respond_to do |format|
      format.html { redirect_to my_visas_url, notice: 'My visa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_visa
      @my_visa = MyVisa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_visa_params
      params.require(:my_visa).permit(:title, :body)
    end
end
