class StaticPagesController < ApplicationController

  def home
   if moussaillon_signed_in?
   	 redirect_to ragots_path 
   end
  end
end
