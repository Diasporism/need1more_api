json.user do
  json.name "#{@user.first_name} #{@user.last_name}".strip
  json.email @user.email
end
