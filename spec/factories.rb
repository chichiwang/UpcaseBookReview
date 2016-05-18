FactoryGirl.define do
  factory :book do
    title "Untitled"
    publish_date Date.new(1975, 10, 5)
  end
end
