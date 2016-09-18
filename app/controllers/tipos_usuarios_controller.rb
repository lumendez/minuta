class TiposUsuariosController < ApplicationController
  before_action :set_tipos_usuario, only: [:show, :edit, :update, :destroy]

  # GET /tipos_usuarios
  # GET /tipos_usuarios.json
  def index
    @tipos_usuarios = TiposUsuario.all
  end

  # GET /tipos_usuarios/1
  # GET /tipos_usuarios/1.json
  def show
  end

  # GET /tipos_usuarios/new
  def new
    @tipos_usuario = TiposUsuario.new
  end

  # GET /tipos_usuarios/1/edit
  def edit
  end

  # POST /tipos_usuarios
  # POST /tipos_usuarios.json
  def create
    @tipos_usuario = TiposUsuario.new(tipos_usuario_params)

    respond_to do |format|
      if @tipos_usuario.save
        format.html { redirect_to @tipos_usuario, notice: 'Tipos usuario was successfully created.' }
        format.json { render :show, status: :created, location: @tipos_usuario }
      else
        format.html { render :new }
        format.json { render json: @tipos_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_usuarios/1
  # PATCH/PUT /tipos_usuarios/1.json
  def update
    respond_to do |format|
      if @tipos_usuario.update(tipos_usuario_params)
        format.html { redirect_to @tipos_usuario, notice: 'Tipos usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipos_usuario }
      else
        format.html { render :edit }
        format.json { render json: @tipos_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_usuarios/1
  # DELETE /tipos_usuarios/1.json
  def destroy
    @tipos_usuario.destroy
    respond_to do |format|
      format.html { redirect_to tipos_usuarios_url, notice: 'Tipos usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipos_usuario
      @tipos_usuario = TiposUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipos_usuario_params
      params.require(:tipos_usuario).permit(:tipo)
    end
end
