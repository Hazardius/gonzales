class Wardrobe < ActiveRecord::Base
  def name=(val)
    self[:name] = val
  end
  def name
    self[:name]
  end
end
