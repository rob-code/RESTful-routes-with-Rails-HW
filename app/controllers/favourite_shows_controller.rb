class FavouriteShowsController < ApplicationController

def index
favourites = FavouriteShow.where({user: params[:user_id]})  #this is user_id because it comes from the nested id
render json: favourites.as_json({
  include:{
    show: {
      only:[:title, :series, :description]
    },
    user: {
      only: [:name]
    }
  }
  })
end


def favourited_by
favourites = FavouriteShow.where({show: params[:id]})    #this is :id because we explicitly forced this in routes
render json: favourites.as_json({
  include:{
    
    user:{
      only:[:name]
    },

    show:{
      only:[:title]
    }
  }




  })
end

def show
favourite = FavouriteShow.find(params[:id])
render json: favourite
end

end
