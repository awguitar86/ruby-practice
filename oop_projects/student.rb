class Student
  attr_accessor :first_name, :last_name, :email
  attr_reader :username

  @first_name
  @last_name
  @email
  @username = "timburns"
  @password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
  end

  # def first_name=(name)
  #   @first_name = name
  # end

  # def first_name
  #   @first_name
  # end

  def to_s
    "First name: #{@first_name}"
  end

end

timburns = Student.new
timburns.first_name = "Tim"
timburns.last_name = "Burns"
timburns.email = "tim@burns.com"
timburns.set_username
puts timburns.first_name
puts timburns.last_name
puts timburns.email
puts timburns.username