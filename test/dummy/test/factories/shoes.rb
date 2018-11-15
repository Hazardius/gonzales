FactoryBot.define do
  factory :shoe do
    name { 'Classy' }
    speedy :upper_material, :leather
    speedy :lower_material, :rubber
    speedy :inner_material, :leather
    size { 42 }
  end
  factory :boot, class: 'Shoe' do
    name { 'Boot' }
    speedy :upper_material, :leather
    speedy :lower_material, :leather
    speedy :inner_material, :leather
    size { 42 }
  end
end
