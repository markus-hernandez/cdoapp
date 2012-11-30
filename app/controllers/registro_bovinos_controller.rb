class RegistroBovinosController < ApplicationController
  # GET /registro_bovinos
  # GET /registro_bovinos.json
  def index
    @registro_bovinos = RegistroBovino.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @registro_bovinos }
    end
  end

  # GET /registro_bovinos/1
  # GET /registro_bovinos/1.json
  def show
    @registro_bovino = RegistroBovino.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @registro_bovino }
    end
  end

  # GET /registro_bovinos/new
  # GET /registro_bovinos/new.json
  def new
    @registro_bovino = RegistroBovino.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @registro_bovino }
    end
  end

  # GET /registro_bovinos/1/edit
  def edit
    @registro_bovino = RegistroBovino.find(params[:id])
  end

  # POST /registro_bovinos
  # POST /registro_bovinos.json
  def create
    @registro_bovino = RegistroBovino.new(params[:registro_bovino])

    respond_to do |format|
      if @registro_bovino.save
        #format.html { redirect_to @registro_bovino, notice: 'Registro bovino was successfully created.' }
        format.html { redirect_to action: "index" }
        format.json { render json: @registro_bovino, status: :created, location: @registro_bovino }
      else
        format.html { render action: "new" }
        format.json { render json: @registro_bovino.errors, status: :unprocessable_entity }
      end  
    end
  end

  # PUT /registro_bovinos/1
  # PUT /registro_bovinos/1.json
  def update
    @registro_bovino = RegistroBovino.find(params[:id])

    respond_to do |format|
      if @registro_bovino.update_attributes(params[:registro_bovino])
        #format.html { redirect_to @registro_bovino, notice: 'Registro bovino was successfully updated.' }
        format.html { redirect_to action: "index" }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @registro_bovino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_bovinos/1
  # DELETE /registro_bovinos/1.json
  def destroy
    @registro_bovino = RegistroBovino.find(params[:id])
    @registro_bovino.destroy

    respond_to do |format|
      format.html { redirect_to registro_bovinos_url }
      format.json { head :no_content }
    end
  end
end
