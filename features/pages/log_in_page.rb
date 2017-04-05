class LogInPage
  include PageObject

  text_field :username, id: 'username'
  text_field :password, id: 'password'
  button :login, id: 'submit'

  def enter_username
    username_element.value = ENV['username']
  end

  def enter_password
    password_element.value = ENV['password']
  end

  def submit
    login_element.click
  end
end