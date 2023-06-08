class BoardsController < ApplicationController
    def board_params
        params.require(:board).permit(:title, :body, :board_image, :board_image_cache)
      end
end
