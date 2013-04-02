class AboutMeController < ApplicationController
  # GET /about_mes
  # GET /about_mes.json
  def index
    @about_mes = AboutMe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @about_mes }
    end
  end

  # GET /about_mes/1
  # GET /about_mes/1.json
  def show
    @about_me = AboutMe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @about_me }
    end
  end

  # GET /about_mes/new
  # GET /about_mes/new.json
  def new
    @about_me = AboutMe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @about_me }
    end
  end

  # GET /about_mes/1/edit
  def edit
    @about_me = AboutMe.find(params[:id])
  end

  # POST /about_mes
  # POST /about_mes.json
  def create
    @about_me = AboutMe.new(params[:about_me])

    respond_to do |format|
      if @about_me.save
        format.html { redirect_to @about_me, notice: 'About me was successfully created.' }
        format.json { render json: @about_me, status: :created, location: @about_me }
      else
        format.html { render action: "new" }
        format.json { render json: @about_me.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /about_mes/1
  # PUT /about_mes/1.json
  def update
    @about_me = AboutMe.find(params[:id])

    respond_to do |format|
      if @about_me.update_attributes(params[:about_me])
        format.html { redirect_to @about_me, notice: 'About me was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @about_me.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_mes/1
  # DELETE /about_mes/1.json
  def destroy
    @about_me = AboutMe.find(params[:id])
    @about_me.destroy

    respond_to do |format|
      format.html { redirect_to about_mes_url }
      format.json { head :no_content }
    end
  end
end
