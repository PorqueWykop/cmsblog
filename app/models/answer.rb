class Answer < ActiveRecord::Base
  attr_accessible :article_id, :name, :status

  validates :status, :name, :presence => true

  belongs_to :article

  belongs_to :replies, :class_name => "Answer", :foreign_key => "answer_id"
  
end
