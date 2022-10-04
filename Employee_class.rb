class Employee
    attr_reader :title, :boss, :salary
    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        @salary * multiplier if self.title == "TA"
    end

    def boss=(boss_instance)
        return if boss_instance == self.boss

        self.boss = boss_instance
        self.boss.subordinates << self
    end

end
