class MoussaillonsController < ApplicationController
	before_action :authenticate_moussaillon! #pour bloquer les pages si tu n'es pas logé 
end
