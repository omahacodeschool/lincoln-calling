FactoryGirl.define do
  factory :event do
    artist_id 1
    venue_id 1
    age_range "MyString"
    start_date_time "2016-03-21 17:43:14"
    end_date_time "2016-03-21 17:43:14"
  end
  factory :venue do
    name "MyString"
    location "MyString"
    info "MyString"
    img "MyString"
  end
end
