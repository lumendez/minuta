class RecesoSemestresController < ApplicationController
  before_action :set_receso_semestre, only: [:show, :edit, :update, :destroy]

  # GET /receso_semestres
  # GET /receso_semestres.json
  def index
    @receso_semestres = RecesoSemestre.all
  end

  # GET /receso_semestres/1
  # GET /receso_semestres/1.json
  def show
  end

  # GET /receso_semestres/new
  def new
    @receso_semestre = RecesoSemestre.new
  end

  # GET /receso_semestres/1/edit
  def edit
  end

  # POST /receso_semestres
  # POST /receso_semestres.json
  def create
    @receso_semestre = RecesoSemestre.new(receso_semestre_params)

    respond_to do |format|
      if @receso_semestre.save
        format.html { redirect_to @receso_semestre, notice: 'Receso semestre was successfully created.' }
        format.json { render :show, status: :created, location: @receso_semestre }
      else
        format.html { render :new }
        format.json { render json: @receso_semestre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receso_semestres/1
  # PATCH/PUT /receso_semestres/1.json
  def update
    respond_to do |format|
      if @receso_semestre.update(receso_semestre_params)
        format.html { redirect_to @receso_semestre, notice: 'Receso semestre was successfully updated.' }
        format.json { render :show, status: :ok, location: @receso_semestre }
      else
        format.html { render :edit }
        format.json { render json: @receso_semestre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receso_semestres/1
  # DELETE /receso_semestres/1.json
  def destroy
    @receso_semestre.destroy
    respond_to do |format|
      format.html { redirect_to receso_semestres_url, notice: 'Receso semestre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receso_semestre
      @receso_semestre = RecesoSemestre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receso_semestre_params
      params.require(:receso_semestre).permit(:semestre)
    end
end
