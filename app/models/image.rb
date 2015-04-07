class Image < ActiveRecord::Base
  belongs_to :albums

  private

  def image_params
    params.require(:image).permit(:path)
  end
end