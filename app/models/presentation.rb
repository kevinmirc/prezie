class Presentation < ActiveRecord::Base
  belongs_to :creator

  def self.search(search_params)
    where('title LIKE ?', "%#{search_params["query"]}%")
  end
end
