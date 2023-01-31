class Employee
    def initialize(name, title, salary, boss)
        @name = name
        @title = title 
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end
end

class Manager < Employee

    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @assigned_employees = []
    end

    def bonus(multiplier)
        sum = 0
        @assigned_employees.each do |employee|
            sum += employee.salary
        end

        bonus = sum * multiplier
    end
end

