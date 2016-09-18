class CambiarTemasController < ApplicationController
  before_action :set_cambiar_tema, only: [:show, :edit, :update, :destroy]

  # GET /cambiar_temas
  # GET /cambiar_temas.json
  def index
    @cambiar_temas = CambiarTema.all
  end

  # GET /cambiar_temas/1
  # GET /cambiar_temas/1.json
  def show
  end

  # GET /cambiar_temas/new
  def new
    @cambiar_tema = CambiarTema.new
  end

  # GET /cambiar_temas/1/edit
  def edit
  end

  # POST /cambiar_temas
  # POST /cambiar_temas.json
  def create
    @cambiar_tema = CambiarTema.new(cambiar_tema_params)

    respond_to do |format|
      if @cambiar_tema.save
        format.html { redirect_to @cambiar_tema, notice: 'Cambiar tema was successfully created.' }
        format.json { render :show, status: :created, location: @cambiar_tema }
      else
        format.html { render :new }
        format.json { render json: @cambiar_tema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cambiar_temas/1
  # PATCH/PUT /cambiar_temas/1.json
  def update
    respond_to do |format|
      if @cambiar_tema.update(cambiar_tema_params)
        format.html { redirect_to @cambiar_tema, notice: 'Cambiar tema was successfully updated.' }
        format.json { render :show, status: :ok, location: @cambiar_tema }
      else
        format.html { render :edit }
        format.json { render json: @cambiar_tema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cambiar_temas/1
  # DELETE /cambiar_temas/1.json
  def destroy
    @cambiar_tema.destroy
    respond_to do |format|
      format.html { redirect_to cambiar_temas_url, notice: 'Cambiar tema was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cambiar_tema
      @cambiar_tema = CambiarTema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cambiar_tema_params
      params.require(:cambiar_tema).permit(:anterior, :actual)
    end
end
