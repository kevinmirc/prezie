class PreziesController < ApplicationController
  def index
    @prezies = Presentation.all
  end
end
