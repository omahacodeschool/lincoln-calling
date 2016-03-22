FactoryGirl.define do
  factory :user do
    name "MyString"
    email "MyString"
    password "MyString"
    blurb "MyString"
    profile_pic "MyString"
  end
  factory :event do
    artist_id 1
    venue_id 1
    age_range "MyString"
    start_date_time "2016-03-21 17:43:14"
    end_date_time "2016-03-21 17:43:14"
  end

  factory :article do
    title "MyString"
    byline "MyString"
    article "MyString"
    image "MyString"
  end

  factory :artist do
    name "MyString"
    genre "MyString"
    origin "MyString"
    website "MyString"
    bio "MyString"
    image "MyString"
  end

  factory :venue do
    name "MyString"
    location "MyString"
    info "MyString"
    img "MyString"
  end
end
