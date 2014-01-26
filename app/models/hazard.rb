class Hazard < ActiveRecord::Base
  attr_accessible :area_id, :image_url, :name, :prevention, :products, :risks

  belongs_to :area

end
