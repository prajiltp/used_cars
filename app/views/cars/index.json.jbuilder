json.cars @cars.each do |car|
  json.extract! car, :creator_email, :price, :model, :make, :year_of_manufacture, :category, :description
end