module CategoryList
  extend ActiveSupport::Concern
  included do
    enum category: [ :sedan, :suv, :family_car, :hatchback, :compact_car ]
  end
end
