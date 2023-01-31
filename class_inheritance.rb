class Employee
    attr_reader :name, :title, :salary, :boss
    attr_writer :boss

    def initialize(name, title, salary, boss=nil)
        @name = name
        @title = title 
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end


    def add_boss(manager_instance)
        boss = manager_instance
    end


end

class Manager < Employee
    attr_reader :assigned_employees
    
    def initialize(name, title, salary)
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

    def add_employees(employee_instance)
        self.assigned_employees << employee_instance
    end
end

david = Employee.new("David", "TA", 10_000)
shawna = Employee.new("Shawna", "TA", 12_000)
darren = Manager.new("Darren", "TA Manager", 78_000)
ned = Manager.new("Ned", "Founder", 1_000_000)

david.add_boss(darren)
shawna.add_boss(darren)
darren.add_employees(david)
darren.add_employees(shawna)
darren.add_boss(ned)
ned.add_employees(darren)
ned.add_employees(david)
ned.add_employees(shawna)


p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000