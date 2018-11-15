class Hat < ActiveRecord::Base
  def brim_type=(val)
    self[:brim_type] = val
  end
  def brim_type
    self[:brim_type]
  end

  def size=(val)
    self[:size] = val
  end
  def size
    self[:size]
  end
end
