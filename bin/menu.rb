require_relative '../config/environment'
require_relative './run'


# class Menu 
def main_menu
    puts "Enter the sub-menu number of witch you like to do"
    puts ""
    puts "  [1] Create new student/teacher"
    puts "  [2] Enter new student grade"
    puts "  [3] Generate student grade"
    puts "  [4] Get Teacher report"
    puts "  [5] Delete data"
    puts "  [6] Update student/teacher/garde info"
    puts "  [7] Exit "
    puts" "
    puts "Enter the sub-menu number of witch you like to do"
    puts" "
    input_s =""
    input_s = gets.chomp
    input = input_s.to_i
    case input
    when 1
        submenu_create_new_student_teacher
    when 2
        submenu_enter_new_student_grade
    when 3
        sub_menu3
    when 4
        sub_menu4
    when 5
        sub_menu5
    when 6
        sub_menu6
    when 7
        5.times{puts " "}
        puts "#### GOODBEY  ####"
        5.times{puts " "}
    else
      puts "Error: (#{input_s}) is an invalid value  please enter a number 1 to 7"
      puts " "
    end
    
 
end  

def header
    puts " "
    puts " "
    puts "*****************************************************"
    puts "    ####### Flatiron MOD 1 CLI project ########"
    puts "*****************************************************"
    puts "#######  Generate/Print Middel School grades  #######"
    puts " "
    puts " "
    main_menu
end

def submenu_create_new_student_teacher
    puts "Enter the number of witch you like to do"
    puts ""
    puts "  [1] Create new Student"
    puts "  [2] Create new Teacher"
    puts "  [3] Back to the main Menu"
    puts "  [4] Exit "
    puts" "
    puts "Enter  number of witch you like to do"
    input_s =""
    input_s = gets.chomp
    input = input_s.to_i
    case input
    when 1
        puts " "
        puts "Please enter the Student information "
        puts " "
        print "Name: "
        input=gets.chomp
        h={name: input}
        puts "Please enter birthdate on MM/DD/YYYY Format"
        puts " "
        print "Birthdate:"
        input=gets.chomp
        h[:birthdate]= input
        puts "Please enter Grade level 6th, 7th or 8th"
        puts " "
        print "Grade Level:"
        input=gets.chomp
        h[:grade]= input
        puts "Please enter Student Gender F or M"
        puts " "
        print "Gender:"
        input=gets.chomp
        h[:gender]= input
        new_student(h)
        puts " "
        puts "Thanks Student info  #{h} has been created "
        puts " "
        puts " "
    when 2
        puts " "
        puts "Please enter the Teacher information "
        puts " "
        print "Name: "
        input=gets.chomp
        h={name: input}
        puts "Please enter birthdate on MM/DD/YYYY Format"
        puts " "
        print "Birthdate:"
        input=gets.chomp
        h[:birthdate]= input
        puts "Please enter Grade level 6th, 7th or 8th"
        puts " "
        print "Grade Level:"
        input=gets.chomp
        h[:grade]= input
        puts "Please enter Teacher Subject Math, Science, Lang_Arts or Social Studies"
        puts " "
        print "Subject:"
        input=gets.chomp
        h[:Subject]= input
        new_teacher(h)
        puts " "
        puts "Thanks Teacher info  #{h} has been created "
        puts " "
        puts " "

    when 3
        main_menu
    when 4
        5.times{puts " "}
        puts "#### GOODBEY  ####"
        5.times{puts " "}
    else
      puts "Error: (#{input_s}) is an invalid value  please enter a number 1 to 4"
      puts " "
    end
end

def submenu_enter_new_student_grade
    puts "Enter the number of witch you like to do"
        puts ""
        puts "  [1] Create new Student Grade by Student ID"
        puts "  [2] Create new Student Grade by Student Name and grade level"
        puts "  [3] Back to the main Menu"
        puts "  [4] Exit "
        puts" "
        puts "Enter  number of witch you like to do"
        input_s =""
        input_s = gets.chomp
        input = input_s.to_i
        case input
        when 1
            puts " "
            puts "Please enter the Student Grade information including Student ID"
            puts " "
            print "Student ID: "
            input=gets.chomp
            h={student_id: input}
            puts "Please enter the Term: Fall, Winter Or Spring"
            puts " "
            print "Term:"
            input=gets.chomp
            h[:term]= input
            puts "Please enter the School Year "
            puts " "
            print "School Year:"
            input=gets.chomp
            h[:year]= input
            puts "Please enter Subject Math, Science, Lang_Arts or Social Studies"
            puts " "
            print "Subject:"
            input=gets.chomp
            h[:Subject]= input
            puts "Please enter Percentage Grade"
            puts " "
            print "percentage_grade:"
            input=gets.chomp
            h[:percentage_grade]= input
            puts "Please enter Letter Grade"
            puts " "
            print "Letter Grade:"
            input=gets.chomp
            h[:letter_grade]= input
            new_student_grade_by_student_id(h)
            puts " "
            puts "Thanks Student Grade info  #{h} has been created "
            puts " "
            puts " "
        when 2
            puts " "
            puts "Please enter Student Grade information including Student Name and the Grade Level "
            puts " "
            print "Student Name: "
            input=gets.chomp
            h={name: input}
            puts "Please enter Student Grade Level 6th, 7th or 8th"
            puts " "
            print "Grade Level:"
            input=gets.chomp
            h[:grade]= input
            puts "Please enter the Term: Fall, Winter Or Spring"
            puts " "
            print "Term:"
            input=gets.chomp
            h[:term]= input
            puts "Please enter the School Year "
            puts " "
            print "School Year:"
            input=gets.chomp
            h[:year]= input
            puts "Please enter Subject Math, Science, Lang_Arts or Social Studies"
            puts " "
            print "Subject:"
            input=gets.chomp
            h[:Subject]= input
            puts "Please enter Percentage Grade"
            puts " "
            print "percentage_grade:"
            input=gets.chomp
            h[:percentage_grade]= input
            puts "Please enter Letter Grade"
            puts " "
            print "Letter Grade:"
            input=gets.chomp
            h[:letter_grade]= input
            puts " "
            ar = new_student_grade_by_student_name(h)
            puts " "
            if ar
                puts "Thanks Student Grade info  #{ar} has been created "
            else puts "Sorry"
            end
            puts " "
            puts " "
    
        when 3
            main_menu
        when 4
            5.times{puts " "}
            puts "#### GOODBEY  ####"
            5.times{puts " "}
        else
          puts "Error: (#{input_s}) is an invalid value  please enter a number 1 to 4"
          puts " "
        end
    

end


header

        