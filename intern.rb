# # Arrays
# employee1 = ["Majora", "Carter", 80000, true]
# employee2 = ["Danilo", "Campos", 70000, true]
# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."

# # Hashes
# employee1 = {"first_name" => "Majora", "last_name" => "Carter", "salary" => 80000, "active" => true}
# employee2 = {"first_name" => "Danilo", "last_name" => "Campos", "salary" => 70000, "active" => true}
# puts "#{employee1['first_name']} #{employee1['last_name']} makes #{employee1['salary']} a year."
# puts "#{employee2['first_name']} #{employee2['last_name']} makes #{employee2['salary']} a year."

# # Hashes using symbols for keys
# employee1 = {:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true}
# employee2 = {first_name: "Danilo", last_name: "Campos", salary: 70000, active: true}
# puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]} a year."
# puts "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} a year."

# Instances of a class
class Employee
  attr_reader :first_name, :last_name

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name] 
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def change_active_status
    @active = false
  end

  def full_name
    if @last_name[-1] == "s"
      puts "#{@first_name} #{@last_name}, Esquire status is #{@active}"
    else
      puts "#{@first_name} #{@last_name} status is #{@active}"
    end
  end
end

module EmailReportable

end

class Intern < Employee
  def send_report
    puts "Sending Email..." 
    # use email sending library
    puts "Email sent!"
  end
end

class Manager < Employee 
  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end
  
  def fire_everyone
    @employees.each do |employee|
      employee.change_active_status
    end
  end

  def send_report
    puts "Sending Email..." 
    # use email sending library
    puts "Email sent!"
  end
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)


intern1 = Intern.new(first_name: "Adrienne", last_name: "Lowe", salary: 50000, active: true)
intern1.print_info
intern1.send_report

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_report
manager.give_all_raises
manager.fire_everyone


employee1.print_info
employee2.print_info
employee2.give_annual_raise
employee2.print_info

puts employee1.full_name
puts employee2.full_name

p manager




