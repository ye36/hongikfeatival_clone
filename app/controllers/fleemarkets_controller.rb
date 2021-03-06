class FleemarketsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]  
  before_action :set_fleemarket, only: [:show, :edit, :update, :destroy]
  before_action :is_owner?, only: [:edit, :update, :destroy] 
  # GET /fleemarkets
  # GET /fleemarkets.json
  def index
    @fleemarkets = Fleemarket.order(created_at: :DESC).page(params[:page]).per(8)
  end

  # GET /fleemarkets/1
  # GET /fleemarkets/1.json
  def show
  end

  # GET /fleemarkets/new
  def new
    @fleemarket = Fleemarket.new
  end

  # GET /fleemarkets/1/edit
  def edit
  end

  # POST /fleemarkets
  # POST /fleemarkets.json
  def create
    @fleemarket = Fleemarket.new(fleemarket_params)

    respond_to do |format|
      if @fleemarket.save
        format.html { redirect_to @fleemarket, notice: 'Fleemarket was successfully created.' }
        format.json { render :show, status: :created, location: @fleemarket }
      else
        format.html { render :new }
        format.json { render json: @fleemarket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fleemarkets/1
  # PATCH/PUT /fleemarkets/1.json
  def update
    respond_to do |format|
      if @fleemarket.update(fleemarket_params)
        format.html { redirect_to @fleemarket, notice: 'Fleemarket was successfully updated.' }
        format.json { render :show, status: :ok, location: @fleemarket }
      else
        format.html { render :edit }
        format.json { render json: @fleemarket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fleemarkets/1
  # DELETE /fleemarkets/1.json
  def destroy
    @fleemarket.destroy
    respond_to do |format|
      format.html { redirect_to fleemarkets_url, notice: 'Fleemarket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fleemarket
      @fleemarket = Fleemarket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fleemarket_params
      params.require(:fleemarket).permit(:category, :time, :location, :explain, :mainimage, :image2, :image3, :price, :name, :user_id)
    end
    def is_owner?
      if(current_user == @fleemarket.user || current_user.id==1 || current_user.id==2 || current_user.id==3 || current_user.id==4 || current_user.id==5 || current_user.id==6 || current_user.id==7 || current_user.id==8 )      
      else
        redirect_to @fleemarket  
      end
    end
  end


