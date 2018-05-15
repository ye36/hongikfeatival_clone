class LostcommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_comment, only: [:destroy]
    before_action :is_owner?, only: [:edit, :update, :destroy]     
    def create
        @lostcomment = Lostcomment.new(comment_params)
        if @lostcomment.save
            flash[:notice] = "댓글을 작성 하였습니다."
            redirect_to lostpost_path(params[:lostpost_id]), notice: '댓글을 작성하였습니다.' # :back 과 같음
        else
            flash[:danger] = '댓글을 입력하세요.'
            redirect_to :back
        end
    end
    
    def destroy
        @lostcomment.destroy
        redirect_to :back # :back 과 같음
    end
    
    private
    
    def set_comment
        @lostcomment = Lostcomment.find(params[:id])
    end
    
    def comment_params
        params.require(:lostcomment).permit(:content, :user_id, :lostpost_id)
    end
    
    def is_owner?    
      if(current_user == @lostcomment.user || current_user.id==1 || current_user.id==2 || current_user.id==3 || current_user.id==4 || current_user.id==5 || current_user.id==6 || current_user.id==7 || current_user.id==8 )      
      else
        redirect_to @lostcomment  
      end
    end    
     
 
end
