require_relative "Employee_class.rb"
class Manager < Employee

    def initialize #(name, title, salary, boss)
        @subordinates = []
        super
    end


end
