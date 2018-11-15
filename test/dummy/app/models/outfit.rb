class Outfit < ActiveRecord::Base
  belongs_to :shoe
  belongs_to :hat
  has_and_belongs_to_many :alternative_hats, :join_table => 'hats_outfits', :class_name => 'Hat'

  def style=(val)
    self[:style] = val
  end
  def style
    self[:style]
  end
end
