class ZombiesController < ApplicationController
  
  before_filter :authenticate_zombie!
  before_filter :remove_blank_password, :only => [:create, :update]
  
  def remove_blank_password
    if params[:zombie][:password].blank?
      params[:zombie].delete(:password)
      params[:zombie].delete(:password_confirmation)
    end
  end
  
  # GET /zombies
  # GET /zombies.json
  def index
    @zombies = Zombie.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @zombies }
    end
  end

  # GET /zombies/1
  # GET /zombies/1.json
  def show
    @zombie = Zombie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @zombie }
    end
  end

  # GET /zombies/new
  # GET /zombies/new.json
  def new
    @zombie = Zombie.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @zombie }
    end
  end

  # GET /zombies/1/edit
  def edit
    @zombie = Zombie.find(params[:id])
  end

  # POST /zombies
  # POST /zombies.json
  def create
    @zombie = Zombie.new(params[:zombie])

    respond_to do |format|
      if @zombie.save
        flash[:success] = 'Zombie was successfully created.'
        format.html { redirect_to @zombie }
        format.json { render json: @zombie, status: :created, location: @zombie }
      else
        format.html { render action: "new" }
        format.json { render json: @zombie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /zombies/1
  # PUT /zombies/1.json
  def update
    @zombie = Zombie.find(params[:id])

    respond_to do |format|
      if @zombie.update_attributes(params[:zombie])
        flash[:success] = 'Zombie was successfully updated.'
        format.html { redirect_to @zombie }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @zombie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zombies/1
  # DELETE /zombies/1.json
  def destroy
    @zombie = Zombie.find(params[:id])
    @zombie.destroy

    respond_to do |format|
      format.html { redirect_to zombies_url }
      format.json { head :no_content }
    end
  end
end
