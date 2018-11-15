FactoryBot.define do
  factory :fabric, class: Material do
    name { 'Fabric' }
  end
  factory :leather, class: Material do
    name { 'Leather' }
  end
  factory :rubber, class: Material do
    name { 'Rubber' }
  end
end
