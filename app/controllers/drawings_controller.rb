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

  def show
    drawing = Drawing.find_by(id: params[:id])
    render json: drawing.as_json
  end

  def update
    drawing = Drawing.find_by(id: params[:id])
    drawing.update(
      name: params[:name] || drawing.name,
      tags: params[:tags] || drawing.tags,
      description: params[:description] || drawing.description,
      url: params[:url] || drawing.url,
    )
    render json: drawing.as_json
  end

  def destroy
    drawing = Drawing.find_by(id: params[:id])
    drawing.destroy
    render json: { message: "Drawing destroyed successfuly" }
  end
end
