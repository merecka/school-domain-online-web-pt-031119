require 'pry'

class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    @roster.collect do |grade, name|
      name.sort!
    end
    @roster
  end

end
