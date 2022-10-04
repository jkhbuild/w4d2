require_relative "Employee_class.rb"
class Manager < Employee
    attr_reader :subordinates
    def initialize (name, title, salary)
        super
    end

    def bonus(multiplier)
        salary_sum = 0
        queue = [self]
        until queue.empty?
           sub_i = queue.shift
           if sub_i != self
            salary_sum += sub_i.salary
           end
           queue += sub_i.subordinates
        end

        salary_sum * multiplier
    end


end
