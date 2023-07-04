class DrawingsController < ApplicationController
  def index
    @drawings = Drawing.all
    render json: @drawings.as_json
  end

  def create
    drawing = Drawing.create(
      tags: params[:tags],
      description: params[:description],
      url: params[:url],
      using_Images: false,
    )
    if drawing.save
      render json: { message: "Drawing created successfully." }, status: :created
    else
      render json: { errors: drawing.errors.full_messages }, status: :bad_request
    end
  end

  def show
    drawing = Drawing.find_by(id: params[:id])
    render json: drawing.as_json
  end

  def getimages
    @drawing = Drawing.find_by(id: params[:id])
    # render json: @drawing.as_json
    render template: "drawings/getimages"
  end

  def update
    drawing = Drawing.find_by(id: params[:id])
    drawing.update(
      tags: params[:tags] || drawing.tags,
      description: params[:description] || drawing.description,
      url: params[:url] || drawing.url,
      using_Images: params[:using_Images] || drawing.using_Images,
    )
    render json: drawing.as_json
  end

  def destroy
    drawing = Drawing.find_by(id: params[:id])
    drawing.destroy
    render json: { message: "Drawing destroyed successfuly" }
  end
end
