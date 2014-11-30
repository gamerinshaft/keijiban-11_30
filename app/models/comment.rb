class Comment < ActiveRecord::Base
  belongs_to :board

  validates :board, presence: true
  validates :name, presence: true
  validates :content, presence: true, length: { in: 1..127}
end
