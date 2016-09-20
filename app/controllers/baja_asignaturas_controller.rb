class BajaAsignaturasController < ApplicationController
  before_action :authenticate_user!
  before_action :baja_asignatura, only: :create
  load_and_authorize_resource
  #before_action :set_baja_asignatura, only: [:show, :edit, :update, :destroy]
  #before_action :owned_post, only: [:edit, :update, :destroy]

  # GET /baja_asignaturas
  # GET /baja_asignaturas.json
  def index
    #@baja_asignaturas = BajaAsignatura.all
    @baja_asignaturas = current_user.baja_asignaturas
  end

  # GET /baja_asignaturas/1
  # GET /baja_asignaturas/1.json
  def show
  end

  # GET /baja_asignaturas/new
  def new
    @baja_asignatura = current_user.baja_asignaturas.build
  end

  # GET /baja_asignaturas/1/edit
  def edit
  end

  # POST /baja_asignaturas
  # POST /baja_asignaturas.json
  #def create
    #@baja_asignatura = BajaAsignatura.new(baja_asignatura_params)

    #respond_to do |format|
      #if @baja_asignatura.save
        #format.html { redirect_to @baja_asignatura, notice: 'Baja asignatura was successfully created.' }
        #format.json { render :show, status: :created, location: @baja_asignatura }
      #else
        #format.html { render :new }
        #format.json { render json: @baja_asignatura.errors, status: :unprocessable_entity }
      #end
    #end
  #end

  def create
    @baja_asignatura = current_user.baja_asignaturas.build(baja_asignatura_params)

    if @baja_asignatura.save
      flash[:success] = "Your post has been created!"
      redirect_to baja_asignaturas_path
    else
      flash[:alert] = "Your new post couldn't be created!  Please check the form."
      render :new
    end
  end

  # PATCH/PUT /baja_asignaturas/1
  # PATCH/PUT /baja_asignaturas/1.json
  def update
    respond_to do |format|
      if @baja_asignatura.update(baja_asignatura_params)
        format.html { redirect_to @baja_asignatura, notice: 'Baja asignatura was successfully updated.' }
        format.json { render :show, status: :ok, location: @baja_asignatura }
      else
        format.html { render :edit }
        format.json { render json: @baja_asignatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /baja_asignaturas/1
  # DELETE /baja_asignaturas/1.json
  def destroy
    @baja_asignatura.destroy
    respond_to do |format|
      format.html { redirect_to baja_asignaturas_url, notice: 'Baja asignatura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    #def set_baja_asignatura
      #@baja_asignatura = BajaAsignatura.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    def baja_asignatura_params
      params.require(:baja_asignatura).permit(:nombre)
    end

    def baja_asignatura
      @baja_asignatura = BajaAsignatura.new(baja_asignatura_params)
    end

    #def owned_post
      #unless current_user == @baja_asignatura.user
        #flash[:alert] = "Esta solicitud no le pertenece!"
        #redirect_to baja_asignaturas_path
      #end
    #end
end
