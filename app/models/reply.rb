class Reply < ActiveRecord::Base
  attr_accessible :answer_id, :content, :name

  validates :content, :name, :presence => true

  belongs_to :answer

end
