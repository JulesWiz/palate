collection @users, root: :users

attributes :first_name, :last_name, :city, :country, :description, :facebook, :mobile_number, :email

node :href do |user|
  user_url(user)
end