class Task < ActiveRecord::Base

  validates :name, :presence => true

  after_create :set_false

   private
     def set_false
       self.update(done: false)
     end
end
