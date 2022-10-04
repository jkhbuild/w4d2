class Employee
    attr_reader :title :boss
    def initialize(name, title, salary)
        @name = name
        @title = title
        @salary = salary
        @boss = nil
    end

    def bonus(multiplier)
        @salary * multiplier if self.title == "TA"
    end

    def boss=(boss_instance)
        return if boss_instance == self.boss #

        self.boss = boss_instance
        self.boss.subordinates << self
    end

end
