class Student


    @@all_of_students = [  ]
    # To Keep Track of ALL of the Students 

    #Student.all
    def self.all
        return @@all_of_students
    end

    attr_reader   :id
    attr_accessor :name, :hometown, :tired
        # attr_reader <- get
        # attr_writer -> set

    #  Student.new(  ) 
    def initialize( id_in, name_in, hometown_in, tired_in )

        @id = id_in
        @name = name_in
        @hometown = hometown_in
        @tired = tired_in

        @@all_of_students << self
        #        self == the_new_student

    end



    ########  METHOODS  ########

        # Gets a Specific Student Based Upon their :id
        #Student.find_student_by_id( id_to_use_to_find_student )
        
        #### .find METHOD - courtesy of Johannes De Cabo Rojo 
        # def self.find_student_by_id( id_to_use_to_find_student )

        #     found_student = "No ONE 😐...."
        #     # found_student = nil

        #     @@all_of_students.find do | each_student |

        #         # puts each_student.name
        #         if each_student.id == id_to_use_to_find_student
        #             found_student = each_student
        #         end

        #     end
        #     # @@all_of_students.find{| each_student| LOGIC_HERE }


        #     return found_student

        # end

        ##### .each METHOD
        def self.find_student_by_id( id_to_use_to_find_student )

            found_student = "No ONE 😐...."
            # found_student = nil

            @@all_of_students.each do | each_student |

                # puts each_student.name
                if each_student.id == id_to_use_to_find_student
                    found_student = each_student
                end

            end

            return found_student

        end



        #  #<Student> Instance Method
        def print_student_greeting
        
            # self == "whoever we called this method on"

            # "Hi My Name is #{self.name}"

            puts "Hi My Name is #{name}"
            puts "Hi My id is #{id}"
            puts "And it is #{tired} that I am Tired"
        
        end


        #  #<Student> Instance Method
        def get_some_rest

            self == "whoever we called this method on"

            student_to_get_rest = self

            student_to_get_rest.tired = false
            #              self.tired = false

            return student_to_get_rest

                # self.tired = false

                # @tired = false

        end



    ########  METHOODS  ########



    # puts "self in this method is:  #{self}  "
    #                                self == Student (the CLASS)
    # puts "self in this method is:  #{self.all}  "
    #                             Student.all




            # [].each(  ( each_student )=>{}  )
            # [].each(  | each_student | do {} end  )
            # @@all_of_students.each do | each_student |

            #     puts each_student.name

            # end










end #### LAST  end 








    # def self.new
    #     puts "No What We Think it is....💎👀"
    # end








# Get to CLASS Student END Deliverables:

# ✅
# Create the Student Class
    # A Student has the following attributes
        # id
        # name
        # hometown
        # tired (a true or false value: boolean)

# ✅
# Create 5-10 NEW Student Instances

# ✅
# Write the Following Methods:
    # ✔️
    # Gets a Specific Student Based Upon their :id

    # ✔️
    # Print a Student’s Name as Follows:
        # “Hi My Name is {Student Name}”

# ✅
# Bonus
    # Student Get Some Rest Method
    #   changes tired attribute to false