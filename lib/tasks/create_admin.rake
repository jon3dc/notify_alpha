namespace :users do
  desc "it will create test user"
  task create_admin: :environment do
  	User.create(
  		email: 'test@email.com', 
  		password: 'password',
  		confirmed_at: Time.now
     )
  end
end