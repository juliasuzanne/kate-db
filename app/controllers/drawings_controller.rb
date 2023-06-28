class DrawingsController < ApplicationController
  def index
    drawings = Drawing.all
    render json: drawings.as_json
  end

  def create
    drawing = Drawing.create(
      name: params[:name],
      tags: params[:tags],
      description: params[:description],
      url: params[:url],
    )
    render json: drawing.as_json
  end
end
