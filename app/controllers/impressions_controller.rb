class ImpressionsController < ApplicationController

before_action :authenticate_user!

def index
    @impressions=Impression.all
end

def show
    @impression = Impression.find(params[:id])
end

def new
    @impression = Impression.new
end

def create
    impression = Impression.new(impression_params)
    impression.user_id = current_user.id
    if impression.save
    redirect_to :action => "index"
    else
    redirect_to :action => "new"
    end
end

def edit
    @impression = Impression.find(params[:id])
end

def update
    impression =Impression.find(params[:id])
    if impression.update(impression_params)
    redirect_to :action => "show", :id =>impression.id
    else
    redirect_to :action => "new"
    end
end

def destroy
    impression = Impression.find(params[:id])
    impression.destroy
    redirect_to action: :index
end

private
def impression_params
    params.require(:impression).permit(:body, :title, :overall)
end

end
