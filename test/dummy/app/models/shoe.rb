class Shoe < ActiveRecord::Base
  belongs_to :upper_material, :class_name => 'Material'
  belongs_to :lower_material, :class_name => 'Material'
  belongs_to :inner_material, :class_name => 'Material'

  def name=(val)
    self[:name] = val
  end
  def name
    self[:name]
  end

  def size=(val)
    self[:size] = val
  end
  def size
    self[:size]
  end
end
