class CarmenBasePage
  include PageObject

  page_url 'https://carmen.osu.edu'
  button :login, text: 'Log in'
end