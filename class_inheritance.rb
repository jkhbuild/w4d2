class Employee
    attr_reader :title
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        @salary * multiplier if self.title == "TA"
    end

end

class Manager < Employee

    def initialize #(name, title, salary, boss)
        @subordinates = []
        super
    end



end