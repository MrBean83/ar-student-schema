require_relative 'db/config'
require_relative 'app/models/student'
require 'Date'
henry = Student.create(first_name: "Henry", 
               last_name: "Nichols",
               gender: "Male",
               birthday: Date.parse('1983-11-22'),
               email: "hnichols@gmail.com",
               phone: "1234567890")

erik = Student.create(:email => "hnichols@gmail.com")
lebron = Student.create(:email => "awesomesauce")
james = Student.create(:birthday => Date.parse('2011-12-24'))

p erik.valid? == false
p lebron.valid? == false
p james.valid? == false


# p henry.name == "Henry Nichols"
# p henry.name
 
