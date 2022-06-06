class MyapplicationsController < ApplicationController
  before_action :set_myapplication, only: %i[ show edit update destroy ]

  # GET /myapplications or /myapplications.json
  def index
    @myapplications = Myapplication.all
  end

  # GET /myapplications/1 or /myapplications/1.json
  def show
  end

  # GET /myapplications/new
  def new
    @myapplication = Myapplication.new
  end

  # GET /myapplications/1/edit
  def edit
  end

  # POST /myapplications or /myapplications.json
  def create
    @myapplication = Myapplication.new(myapplication_params)

    respond_to do |format|
      if @myapplication.save
        format.html { redirect_to myapplication_url(@myapplication), notice: "Myapplication was successfully created." }
        format.json { render :show, status: :created, location: @myapplication }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myapplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myapplications/1 or /myapplications/1.json
  def update
    respond_to do |format|
      if @myapplication.update(myapplication_params)
        format.html { redirect_to myapplication_url(@myapplication), notice: "Myapplication was successfully updated." }
        format.json { render :show, status: :ok, location: @myapplication }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myapplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myapplications/1 or /myapplications/1.json
  def destroy
    @myapplication.destroy

    respond_to do |format|
      format.html { redirect_to myapplications_url, notice: "Myapplication was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myapplication
      @myapplication = Myapplication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def myapplication_params
      params.require(:myapplication).permit(:title, :note, :detail, :status)
    end
end
