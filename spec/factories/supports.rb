FactoryBot.define do
  factory :support do
    task { "家事"}
    content { "掃除・洗濯・炊飯" }
  end
  
  trait :second_task do
    task { '明日の予定' }
    content { '提出、ミーティング、連絡' }
  end
end