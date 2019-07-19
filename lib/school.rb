# create the "model" school (in the domain model context)

class School
  
  # Method 1: the school should have a name and a roster
  
  def initialize (name) #initialize allows you when ever a school object whenever there is a dot new... looks for initalize (need it there for dot new)
    @name = name
    @roster = {}
  end

  # Method 2: define the roster
  # actually, roster is defined on line 9
  # this is a getter method (or a "reader")
  
  def roster
    @roster
  end

  # Method 3: should be able to add students, using name of student and the grade they're in

   def add_student(name, grade)
    # if @roster[grade] != nil 
    #   @roster[grade] << name
    # else
    #   @roster[grade] = [name]
    # end
    
    @roster[grade] ||= [] 
    @roster[grade] << name 
  end
  
  

  # Method 4: roster by grade (?)

   def grade(grade)
    @roster[grade]
  end

  # Method 5: get a sorted list
  
   def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end 