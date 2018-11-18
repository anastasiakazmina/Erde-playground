class MyDocumentsController < ApplicationController
  before_action :set_my_document, only: [:show, :edit, :update, :destroy]

  # GET /my_documents
  # GET /my_documents.json
  def index
    @my_documents = MyDocument.all
  end

  # GET /my_documents/1
  # GET /my_documents/1.json
  def show
  end

  # GET /my_documents/new
  def new
    @my_document = MyDocument.new
  end

  # GET /my_documents/1/edit
  def edit
  end

  # POST /my_documents
  # POST /my_documents.json
  def create
    @my_document = MyDocument.new(my_document_params)

    respond_to do |format|
      if @my_document.save
        format.html { redirect_to @my_document, notice: 'My document was successfully created.' }
        format.json { render :show, status: :created, location: @my_document }
      else
        format.html { render :new }
        format.json { render json: @my_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_documents/1
  # PATCH/PUT /my_documents/1.json
  def update
    respond_to do |format|
      if @my_document.update(my_document_params)
        format.html { redirect_to @my_document, notice: 'My document was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_document }
      else
        format.html { render :edit }
        format.json { render json: @my_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_documents/1
  # DELETE /my_documents/1.json
  def destroy
    @my_document.destroy
    respond_to do |format|
      format.html { redirect_to my_documents_url, notice: 'My document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_document
      @my_document = MyDocument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_document_params
      params.require(:my_document).permit(:title, :body)
    end
end
