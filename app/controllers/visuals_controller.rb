class VisualsController < ApplicationController
    before_action :authenticate_user!
    def index
        @visuals = Visual.all
        @rank_visuals = Visual.all.sort {|a,b| b.liked_users.count <=> a.liked_users.count}
        @q = Visual.ransack(params[:q]) 
        @visuals= @q.result
        
        
    end
    def new
        @visual = Visual.new
    end
    def create
        visual = Visual.new(visual_params)
        visual.user_id = current_user.id
        if visual.save
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end
    def show
        @visual = Visual.find(params[:id])
    end
    def edit
        @visual = Visual.find(params[:id])
    end
    def update
        visual = Visual.find(params[:id])
        if visual.update(visual_params)
            redirect_to :action => "show", :id => visual.id
        else
            redirect_to :action => "new"
        end
    end
    def destroy
        visual = Visual.find(params[:id])
        visual.destroy
        redirect_to action: :index
    end
    private
    def visual_params
        params.require(:visual).permit(:body, :image,:video, :photo, :tall,:weight,:color,:style, tag_ids: [])
    end
    

end
