require_relative '../config/environment'
require_relative './run'


# class Menu 
def main_menu
    puts "Enter the sub-menu number of witch you like to do"
    puts ""
    puts "  [1] Create new Student/Teacher"
    puts "  [2] Enter new Student Grade"
    puts "  [3] Generate Student Grade"
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
        submenu_generate_student_grade
    when 4
        submenu_get_teacher_report
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
          submenu_enter_new_student_grade
        end
end

def submenu_generate_student_grade
        puts "Enter the number of witch you like to do"
        puts ""
        puts "  [1] Final Grade for a Student"
        puts "  [2] Average Grade for a Student in a Subject"
        puts "  [3] Average Grade for a Student in a ALL Subjects"
        puts "  [4] Back to the main Menu"
        puts "  [5] Exit "
        puts" "
        puts "Enter  number of witch you like to do"
        input_s =""
        input_s = gets.chomp
        input = input_s.to_i
        case input
            when 1
                puts " "
                puts "Final Grade for a Student"
                puts "Please enter the Student Name "
                puts " "
                print "Student Name: "
                input=gets.chomp
                puts " "
                g=final_grade_for(input)
                puts " "
                puts "          The Final Grade for  Student  #{input} is #{g}"
                puts "          ###########################################"
                puts " "
            when 2
                puts " "
                puts "Average Grade for a Student in a Subject"
                puts "Please enter the Student Name and the Subject"
                puts " "
                print "Student Name: "
                input1=gets.chomp
                puts " "
                puts "Please enter Subject Math, Science, Lang_Arts or Social Studies"
                print "Subject: "
                input2=gets.chomp
                puts " "
                avg=average_grade_for_student_in_subject(input1,input2)
                puts " "
                puts "          The Average #{input2} Grade for Student #{input1} is #{avg}"
                puts "          ##################################################"
                puts " "
            when 3
                puts " "
                puts "Average Grade for a Student in a ALL Subjects"
                puts "Please enter the Student Name"
                puts " "
                print "Student Name: "
                input=gets.chomp
                puts " "
                puts " "
                avgs=average_grade_for_student_in_all_subject(input)
                puts " "
                puts "         Average Grade in a ALL Subjects"
                puts " "
                puts "                    Student : #{input}"
                puts "                   ###############"
                puts " "
                puts "          The Average Math Grade is           #{avgs[0]}"
                puts "          The Average Science Grade is        #{avgs[1]}"
                puts "          The Average Lang_Arts Grade is      #{avgs[2]}"
                puts "          The Average Social Studies Grade is #{avgs[3]}"
                puts " "
            when 4
                main_menu
            when 5
                5.times{puts " "}
                puts "####  GOODBEY  ####"
                5.times{puts " "}
            else
              puts "Error: (#{input_s}) is an invalid value  please enter a number 1 to 4"
              puts " "
              submenu_generate_student_grade
            end
end
def submenu_get_teacher_report
    puts "Enter the number of witch you like to do"
        puts ""
        puts "  [1] List of Grades for a Class"
        puts "  [2] List of Students who's Grade less than: X"
        puts "  [3] List of Final Grades for ALL Students"
        puts "  [4] Average  Grade for a Class"
        puts "  [5] Back to the main Menu"
        puts "  [6] Exit "
        puts" "
        puts "Enter  number of witch you like to do"
        input_s =""
        input_s = gets.chomp
        input = input_s.to_i
        case input
            when 1
                puts " "
                puts "List of Grades for a Class "
                puts "Please enter the grade level, Subject and Term "
                puts " "
                puts "Please enter Grade level 6th, 7th or 8th"
                print "Grade level: "
                input1=gets.chomp
                puts " "
                puts "Please enter Teacher Subject Math, Science, Lang_Arts or Social Studies"
                print "Subject: "
                input2=gets.chomp
                puts " "
                puts "Please enter the Term: Fall, Winter Or Spring"
                print "Term: "
                input3=gets.chomp
                puts " "
                gardes_list=list_grades_for_class(input1, input2, input3)
                puts " "
                puts "          List of Grades for a #{input1} #{input2} in #{input3}"
                puts " "
                puts "          #########################################"
                puts " "
                gardes_list.each do |g|
                      puts "       Name: #{g[:name]}          Percentage Grade: #{g[:percentage_grade]}  "
                end
                puts "                     "
                puts "          ###########################################"
                puts " "
            when 2
                puts " "
                puts "List of Students who's Final Grade less than: X"
                puts "Please enter the Percentage Grade that you like to filter with"
                puts " "
                print "Percentage Grade: "
                input = gets.chomp.to_i
                puts " "
                puts " "
                students = list_of_students_score_less_than(input)
                puts " "
                puts "          List of Students who's Final Grade less than: #{input}"
                puts " "
                puts "          #########################################"
                puts " "

                students.each do |g|
                    puts "       ID: #{g[:id]}     Name:#{g[:name]}     Final Grade: #{g[:final_grade]}  "
                   end
                puts " "  
            when 3
                puts " "
                puts "         List of Final Grades for ALL Students"
                puts "        #############################"
                puts " "
                puts " "
                students = final_grades
                puts " "
                puts "          List of Final Grades for ALL Students"
                puts " "
                puts "          #########################################"
                puts " "

                students.each do |g|
                    puts "       ID: #{g[:id]}     Name:#{g[:name]}     Final Grade: #{g[:final_grade]}  "
                   end
                puts " " 
            when 4
                puts " "
                puts "         Average  Grade for a Class"
                puts "        #############################"
                puts "Please enter the grade level and Subject "
                puts " "
                puts "Please enter Grade level 6th, 7th or 8th"
                print "Grade level: "
                input1=gets.chomp
                puts " "
                puts "Please enter Teacher Subject Math, Science, Lang_Arts or Social Studies"
                print "Subject: "
                input2=gets.chomp
                puts " "
                puts " "
                puts " "
                puts "          Average  Grade for #{input1} grade, #{input2} Class"
                puts "          #########################################"
                average_score_for_class(input1,input2)
                puts " "
                puts " "
                puts " "                          
            when 5
                main_menu
            when 6
                5.times{puts " "}
                puts "####  GOODBEY  ####"
                5.times{puts " "}
            else
              puts "Error: (#{input_s}) is an invalid value  please enter a number 1 to 4"
              puts " "
              submenu_generate_student_grade
            end
  
end



header

        