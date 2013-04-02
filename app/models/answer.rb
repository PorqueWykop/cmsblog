class Answer < ActiveRecord::Base
  attr_accessible :article_id, :name, :status

  validates :status, :name, :presence => true

  belongs_to :article
  
  has_many :replies, dependent: :destroy
  
end
