FactoryBot.define do
  factory :track_event do
    email { 'buckeye.1@osu.edu' }
    year { 1 }
    category { "GES" }
    title { "A test event" }
    description { "A test description" }
    location { "A test location" }
    date { "2017-10-31" }
    start_time { "A test start time" }

    factory :track_event_with_hyphen do
      email { 'buckeye-buckeye.1@osu.edu' }
    end

    # already have
    factory :ges_event do
    end

    factory :lte_event do
      category { "LTE" }
    end

    factory :cs_event do
      category { "CS" }
      length { 1 }
      contact_name { "A test contact person" }
      contact { "A test contact email" }
    end

  end
end
