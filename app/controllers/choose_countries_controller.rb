class ChooseCountriesController < ApplicationController
  before_action :set_choose_country, only: [:show, :edit, :update, :destroy]

  # GET /choose_countries
  # GET /choose_countries.json
  def index
    @choose_countries = ChooseCountry.all
  end

  # GET /choose_countries/1
  # GET /choose_countries/1.json
  def show
  end

  # GET /choose_countries/new
  def new
    @choose_country = ChooseCountry.new
  end

  # GET /choose_countries/1/edit
  def edit
  end

  # POST /choose_countries
  # POST /choose_countries.json
  def create
    @choose_country = ChooseCountry.new(choose_country_params)

    respond_to do |format|
      if @choose_country.save
        format.html { redirect_to @choose_country, notice: 'Choose country was successfully created.' }
        format.json { render :show, status: :created, location: @choose_country }
      else
        format.html { render :new }
        format.json { render json: @choose_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /choose_countries/1
  # PATCH/PUT /choose_countries/1.json
  def update
    respond_to do |format|
      if @choose_country.update(choose_country_params)
        format.html { redirect_to @choose_country, notice: 'Choose country was successfully updated.' }
        format.json { render :show, status: :ok, location: @choose_country }
      else
        format.html { render :edit }
        format.json { render json: @choose_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /choose_countries/1
  # DELETE /choose_countries/1.json
  def destroy
    @choose_country.destroy
    respond_to do |format|
      format.html { redirect_to choose_countries_url, notice: 'Choose country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_choose_country
      @choose_country = ChooseCountry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def choose_country_params
      params.require(:choose_country).permit(:title, :body)
    end
end
