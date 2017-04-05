class ProjCourseHomePage
  include PageObject

  link :chat, text: 'Chat'

  def enter_chatroom
    chat_element.click
  end

end