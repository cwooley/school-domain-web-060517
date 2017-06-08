class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(name, grade)
     if !@roster[grade]
       @roster[grade] = []
     end
     @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.keys.each do |grade|
      @roster[grade].sort!
    end
    @roster
  end


end
