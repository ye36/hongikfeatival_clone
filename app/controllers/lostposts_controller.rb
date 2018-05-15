class LostpostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_lostpost, only: [:show, :edit, :update, :destroy]
  before_action :is_owner?, only: [:edit, :update ,:destroy]
  # GET /lostposts
  # GET /lostposts.json
  def index
    @qus = params[:goal]
    @qus2 = params[:group]


    if @qus == "주인을 찾아요" && @qus2 == "지갑"
      @lostposts = Lostpost.where(:goal => @qus, :group => @qus2).order('created_at DESC').page(params[:page]).per(8)
    elsif @qus == "주인을 찾아요" && @qus2 == "가방"
      @lostposts = Lostpost.where(:goal => @qus, :group => @qus2).order('created_at DESC').page(params[:page]).per(8)
    elsif @qus == "주인을 찾아요" && @qus2 == "휴대폰"
      @lostposts = Lostpost.where(:goal => @qus, :group => @qus2).order('created_at DESC').page(params[:page]).per(8)
    elsif @qus == "주인을 찾아요" && @qus2 == "기타"
      @lostposts = Lostpost.where(:goal => @qus, :group => @qus2).order('created_at DESC').page(params[:page]).per(8)
    elsif @qus == "물건을 찾아요" && @qus2 == "지갑"
      @lostposts = Lostpost.where(:goal => @qus, :group => @qus2).order('created_at DESC').page(params[:page]).per(8)
    elsif @qus == "물건을 찾아요" && @qus2 == "가방"
      @lostposts = Lostpost.where(:goal => @qus, :group => @qus2).order('created_at DESC').page(params[:page]).per(8)
    elsif @qus == "물건을 찾아요" && @qus2 == "휴대폰"
      @lostposts = Lostpost.where(:goal => @qus, :group => @qus2).order('created_at DESC').page(params[:page]).per(8)
    elsif @qus == "물건을 찾아요" && @qus2 == "기타"
      @lostposts = Lostpost.where(:goal => @qus, :group => @qus2).order('created_at DESC').page(params[:page]).per(8)
    else
      if params[:search]
        if params[:selecto]=="1"
          @lostposts = Lostpost.search1(params[:search]).order("created_at DESC").page(params[:page]).per(8)
        elsif params[:selecto]=="2"
          @lostposts = Lostpost.search2(params[:search]).order("created_at DESC").page(params[:page]).per(8)
        elsif params[:selecto]=="3"
          @lostposts = Lostpost.search3(params[:search]).order("created_at DESC").page(params[:page]).per(8)
        else
        end
      else
       @lostposts = Lostpost.order(created_at: :DESC).page(params[:page]).per(8)
      end  
    end
  end

  # GET /lostposts/1
  # GET /lostposts/1.json
  def show
    @lostcomment = Lostcomment.new
    @lostcomments = @lostpost.content
  end

  # GET /lostposts/new
  def new
    @lostpost = Lostpost.new
  end

  # GET /lostposts/1/edit
  def edit
  end

  # POST /lostposts
  # POST /lostposts.json
  def create
    @lostpost = Lostpost.new(lostpost_params)

    respond_to do |format|
      if @lostpost.save
        format.html { redirect_to @lostpost, notice: 'Lostpost was successfully created.' }
        format.json { render :show, status: :created, location: @lostpost }
      else
        format.html { render :new }
        format.json { render json: @lostpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lostposts/1
  # PATCH/PUT /lostposts/1.json
  def update
    respond_to do |format|
      if @lostpost.update(lostpost_params)
        format.html { redirect_to @lostpost, notice: 'Lostpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @lostpost }
      else
        format.html { render :edit }
        format.json { render json: @lostpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lostposts/1
  # DELETE /lostposts/1.json
  def destroy
    @lostpost.destroy
    respond_to do |format|
      format.html { redirect_to lostposts_url, notice: 'Lostpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lostpost
      @lostpost = Lostpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lostpost_params
      params.require(:lostpost).permit(:goal, :group, :title, :content, :location, :image, :user_id)
    end
    
    def is_owner?
        redirect_to @lostpost unless current_user == @lostpost.user
    end    
end
