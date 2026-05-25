FactoryBot.define do
  factory :user do
    nickname              { 'ニックネーム' }
    email                 { Faker::Internet.email }
    password              { 'abc123' }
    password_confirmation { password }
    first_name            { '太郎' }
    last_name             { '山田' }
    first_name_kana       { 'タロウ' }
    last_name_kana        { 'ヤマダ' }
    birth_date            { '2000-01-01' }
  end
end
