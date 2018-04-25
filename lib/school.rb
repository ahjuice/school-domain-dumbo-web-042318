# code here!
class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    unless self.roster.key?(grade)
      self.roster[grade] = []
    end
    self.roster[grade] << name
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    sorted_roster = self.roster.inject({}) { | roster, (grade, students) |
      roster[grade] = students.sort; roster
    }
  end
end
