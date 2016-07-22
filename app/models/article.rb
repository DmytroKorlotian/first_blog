class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }
  
  validates :text, presence: true,
					 length: { minimum: 20 }

  has_many :comments, dependent: :destroy

  def title_capitalized
  	title.capitalize
  end

end