require 'faker'
require_relative '../models/users_model'
require_relative '../models/user_put'

def sort_id
    user_file = YAML.load_file('features/support/massa/user.yml')
    ids = "#{user_file['ids']}"
    ids = ids.split(",")
    ids = ids[rand(1...ids.length)]
    ids    
end

FactoryBot.define do
    factory :user, class: UserModel do
        id { Faker::Number.number(digits: 2) }
        user_name {Faker::Name.name}
        password { 123456 }
    end

FactoryBot.define do
    factory :user_put, class: UserPut do
        id {Faker::Number.number(digits: 3)} 
        title {Faker::Name.name}
        dueDate {("1971-08-10T05:13:16.566Z")}
        completed { true }
        
    end
end    
end