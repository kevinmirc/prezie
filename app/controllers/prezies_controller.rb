class PreziesController < ApplicationController
  def index
    @prezies = Presentation.all
  end

  def search
    @prezies = Presentation.search(search_params)

    respond_to do |format|
      format.html { }
      format.js { render 'search_result' }
    end
  end

  private

  def search_params
    params.require(:search).permit(:query)
  end
end
