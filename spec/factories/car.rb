FactoryBot.define do
  factory :car do
    trait :suv do
      category {:suv}
      make {:mahindra}
      model {:xuv5oo}
      price {1200000}
      year_of_manufacture {2016}
      description {:sample}
      creator_email {:'test@gmail.com'}
    end

    trait :hatchback_2007 do
      category {:hatchback}
      make {:hundai}
      model {:santro}
      price {120000}
      year_of_manufacture {2007}
      description {:sample}
      creator_email {:'test@gmail.com'}
    end
  end
end
