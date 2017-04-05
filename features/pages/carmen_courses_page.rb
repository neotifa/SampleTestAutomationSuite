class CarmenCoursesPage
  include PageObject

  link :proj_course, text: 'CSE 3901 - Proj: Web Apps (9702)'

  def nav_to_class
    proj_course_element.click
  end

end