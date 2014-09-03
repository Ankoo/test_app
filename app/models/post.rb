class Post < ActiveRecord::Base
  
  validates :body, :title, presence: true
  
  after_save :set_visible_to_false
  
protected
  def set_visible_to_false
    self.visible = false
  end
  
end
