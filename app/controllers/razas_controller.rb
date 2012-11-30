class RazasController < ApplicationController
  # GET /razas
  # GET /razas.json
  def index
    @razas = Raza.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @razas }
    end
  end

  # GET /razas/1
  # GET /razas/1.json
  def show
    @raza = Raza.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @raza }
    end
  end

  # GET /razas/new
  # GET /razas/new.json
  def new
    @raza = Raza.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @raza }
    end
  end

  # GET /razas/1/edit
  def edit
    @raza = Raza.find(params[:id])
  end

  # POST /razas
  # POST /razas.json
  def create
    @raza = Raza.new(params[:raza])

    respond_to do |format|
      if @raza.save
        #format.html { redirect_to @raza, notice: 'Raza was successfully created.' }
        format.html { redirect_to action: "index" }
        format.json { render json: @raza, status: :created, location: @raza }        
      else
        format.html { render action: "new" }
        format.json { render json: @raza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /razas/1
  # PUT /razas/1.json
  def update
    @raza = Raza.find(params[:id])

    respond_to do |format|
      if @raza.update_attributes(params[:raza])
        #format.html { redirect_to @raza, notice: 'Raza was successfully updated.' }
        format.html { redirect_to action: "index" }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @raza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /razas/1
  # DELETE /razas/1.json
  def destroy
    @raza = Raza.find(params[:id])
    @raza.destroy

    respond_to do |format|
      format.html { redirect_to razas_url }
      format.json { head :no_content }
    end
  end
end
