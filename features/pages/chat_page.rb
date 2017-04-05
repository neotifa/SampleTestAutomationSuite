class ChatPage
  include PageObject

  div :message_box, class: 'ctf-message-input__wrapper'
  #span :message_box, class: 'sr-only' #xpath: '//div[@class=\'ctf-message-input__wrapper\']//label//span'
  button :send, text: 'Send'

  def send_msg (msg)
    message_box_element.click
    @browser.send_keys(msg)
    send_element.click
  end
end