class ImagesController < ApplicationController
  def index
    images = Image.all
    render json: images.as_json
  end

  def create
    image = Image.create(
      url: params[:url],
      description: params[:description],
      drawing_id: params[:drawing_id],
    )
    if image.save
      render json: { message: "Image created successfully" }, status: :created
    else
      render json: { errors: image.errors.full_messages }, status: :bad_request
    end
  end

  def show
    image = Image.all.where(drawing_id: params[:id])
    render json: image.as_json
  end

  def update
    image = Image.find_by(id: params[:id])
    image.update(
      url: params[:url] || image.url,
      description: params[:description] || image.description,
      drawing_id: params[:drawing_id] || image.drawing_id,
    )
    render json: image.as_json
  end

  def destroy
    image = Image.find_by(id: params[:id])
    image.destroy
    render json: { message: "Sub-drawing destroyed successfuly" }
  end
end
