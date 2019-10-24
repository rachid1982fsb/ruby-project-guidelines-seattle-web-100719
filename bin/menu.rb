require_relative '../config/environment'
require_relative './run'


# class Menu 
def main_menu
    header
    puts "      Enter the Sub_Menu number  "
    puts ""
    puts "  [1] Create new Student/Teacher"
    puts "  [2] Enter new Student Grade"
    puts "  [3] Generate Student Grade"
    puts "  [4] Get Teacher report"
    puts "  [5] Delete data"
    puts "  [6] Update student/teacher/garde info"
    puts "  [7] Exit "
    puts" "
    puts "        Enter the sub-menu number "
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
        submenu_delete_data
    when 6
        sub_menu6
    when 7
        exiting
    else
      puts "Error: (#{input_s}) is an invalid value  Enter a number 1 to 7"
      puts " "
      main_menu
    end
    
 
end  
def header
    system("clear")
    puts "*****************************************************"
    puts "    ####### Flatiron MOD 1 CLI project ########"
    puts "*****************************************************"
    puts "#######  Generate Middel School Grades  #######"
    puts " "
    puts " "
end

def exiting
    header
    2.times{puts " "}
    puts "#### GOODBYE  ####"
    5.times{puts " "}
end


def start_cli
    header
    puts " Enter Y to go to the Menu or N to Exit"
    print " Menu ?"
    input =""
    input = gets.chomp

    if  input == "Y" || input == "y" 
        main_menu
    elsif input == "N" || input == "n"
        5.times{puts " "}
        puts "#### GOODBYE  ####"
        5.times{puts " "}
    else puts "Error: (#{input}) is an invalid value  Enter a number Y or N"
        start_cli
    end
end

def submenu_create_new_student_teacher
    header
    puts "       Select From The Following Options:"
    puts ""
    puts "    [1] Create new Student"
    puts "    [2] Create new Teacher"
    puts "    [3] Back to the main Menu"
    puts "    [4] Exit "
    puts" "
    puts "       Select From The Following Options:"
    input_s =""
    input_s = gets.chomp
    input = input_s.to_i
    case input
    when 1
        puts " "
        puts "       Create new Student "
        puts "   Enter the Student information "
        puts " "
        print "Name: "
        input=gets.chomp
        h={name: input}
        puts "Enter birthdate on MM/DD/YYYY Format"
        puts " "
        print "Birthdate:"
        input=gets.chomp
        h[:birthdate]= input
        puts "Enter Grade level 6th, 7th or 8th"
        puts " "
        print "Grade Level:"
        input=gets.chomp
        h[:grade]= input
        puts "Enter Student Gender F or M"
        puts " "
        print "Gender:"
        input=gets.chomp
        h[:gender]= input
        new_student(h)
        puts " "
        puts "Thanks, a new Student record  #{h} is created "
        puts " "
        puts " "
        5.times{puts " "}
        
    when 2
        puts " "
        puts "         Create new Teacher "
        puts "    Enter the Teacher information "
        puts " "
        print "Name: "
        input=gets.chomp
        h={name: input}
        puts "Enter birthdate on MM/DD/YYYY Format"
        puts " "
        print "Birthdate:"
        input=gets.chomp
        h[:birthdate]= input
        puts "Enter Grade level 6th, 7th or 8th"
        puts " "
        print "Grade Level:"
        input=gets.chomp
        h[:grade]= input
        puts "Enter Teacher Subject Math, Science, Lang_Arts or Social Studies"
        puts " "
        print "Subject:"
        input=gets.chomp
        h[:Subject]= input
        new_teacher(h)
        puts " "
        puts "Thanks, a new Teacher record  #{h} is created "

        puts " "
        puts " "
        
    when 3
        main_menu
    when 4
        exiting
    else
      puts "Error: (#{input_s}) is an invalid value  Enter a number 1 to 4"
      puts " "
      submenu_create_new_student_teacher
    end
end

def submenu_enter_new_student_grade
    header
    puts "       Select From The Following Options:"
        puts ""
        puts "    [1] Create new Student Grade by Student ID"
        puts "    [2] Create new Student Grade by Student Name and grade level"
        puts "    [3] Back to the main Menu"
        puts "    [4] Exit "
        puts" "
        puts "Enter  number of witch you like to do"
        input_s =""
        input_s = gets.chomp
        input = input_s.to_i
        case input
        when 1
            puts " "
            puts "             Create new Student Grade by Student ID"
            puts "            ----------------------------------------    "
            puts "    Enter the Student Grade information including Student ID"
            puts " "
            print "Student ID: "
            input=gets.chomp
            h={student_id: input}
            puts "Enter the Term: Fall, Winter Or Spring"
            puts " "
            print "Term:"
            input=gets.chomp
            h[:term]= input
            puts "Enter the School Year "
            puts " "
            print "School Year:"
            input=gets.chomp
            h[:year]= input
            puts "Enter Subject Math, Science, Lang_Arts or Social Studies"
            puts " "
            print "Subject:"
            input=gets.chomp
            h[:Subject]= input
            puts "Enter Percentage Grade"
            puts " "
            print "percentage_grade:"
            input=gets.chomp
            h[:percentage_grade]= input
            puts "Enter Letter Grade"
            puts " "
            print "Letter Grade:"
            input=gets.chomp
            h[:letter_grade]= input
            ar=new_student_grade_by_student_id(h)
            puts " "
            if ar
                puts "Thanks, a new Grade record  #{h} is created "
            else puts "Sorry"
            end
            puts " "
            puts " "
            
        when 2
            puts " "
            puts "    Create new Student Grade by Student Name and grade level "
            puts "    ---------------------------------------------------------    "
            puts "Enter Student Grade information, including Student Name and Grade Level "
            puts " "
            print "Student Name: "
            input=gets.chomp
            h={name: input}
            puts "Enter Student Grade Level 6th, 7th or 8th"
            puts " "
            print "Grade Level:"
            input=gets.chomp
            h[:grade]= input
            puts "Enter the Term: Fall, Winter Or Spring"
            puts " "
            print "Term:"
            input=gets.chomp
            h[:term]= input
            puts "Enter the School Year "
            puts " "
            print "School Year:"
            input=gets.chomp
            h[:year]= input
            puts "Enter Subject Math, Science, Lang_Arts or Social Studies"
            puts " "
            print "Subject:"
            input=gets.chomp
            h[:Subject]= input
            puts "Enter Percentage Grade"
            puts " "
            print "percentage_grade:"
            input=gets.chomp
            h[:percentage_grade]= input
            puts "Enter Letter Grade"
            puts " "
            print "Letter Grade:"
            input=gets.chomp
            h[:letter_grade]= input
            puts " "
            ar = new_student_grade_by_student_name(h)
            puts " "
            if ar
                puts "Thanks, a new Grade record  #{h} is created "
            else puts "Sorry"
            end
            puts " "
            puts " "
            
    
        when 3
            main_menu
        when 4
            exiting
        else
          puts "Error: (#{input_s}) is an invalid value  Enter a number 1 to 4"
          puts " "
          submenu_enter_new_student_grade
        end
end

def submenu_generate_student_grade
    header
        puts "       Select From The Following Options:"
        puts ""
        puts "    [1] Final Grade for a Student"
        puts "    [2] Average Grade for a Student in a Subject"
        puts "    [3] Average Grade for a Student in a ALL Subjects"
        puts "    [4] Back to the main Menu"
        puts "    [5] Exit "
        puts" "
        puts "       Select From The Following Options:"
        input_s =""
        input_s = gets.chomp
        input = input_s.to_i
        case input
            when 1
                puts " "
                puts "Final Grade for a Student"
                puts "Enter the Student Name "
                puts " "
                print "Student Name: "
                input=gets.chomp
                puts " "
                g=final_grade_for(input)
                puts " "
                puts "          The Final Grade for Student  #{input} is #{g}"
                puts "          ###############################################"
                puts " "
            when 2
                puts " "
                puts "Average Grade for a Student in a Subject"
                puts "Enter the Student Name and the Subject"
                puts " "
                print "Student Name: "
                input1=gets.chomp
                puts " "
                puts "Enter Subject Math, Science, Lang_Arts or Social Studies"
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
                puts "Enter the Student Name"
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
                exiting
            else
              puts "Error: (#{input_s}) is an invalid value  Enter a number 1 to 5"
              puts " "
              submenu_generate_student_grade
            end
end
def submenu_get_teacher_report
    header
    puts "       Select From The Following Options:"
        puts ""
        puts "    [1] List of Grades for a specific Class"
        puts "    [2] List of Students with Grade less than: X %"
        puts "    [3] List of Final Grades for ALL Students"
        puts "    [4] Average  Grade for a Class"
        puts "    [5] Back to the main Menu"
        puts "    [6] Exit "
        puts" "
        puts "       Select From The Following Options:"
        input_s =""
        input_s = gets.chomp
        input = input_s.to_i
        case input
            when 1
                puts " "
                puts "List of Grades for a Class ."
                puts "Enter the grade level, Subject and Term. "
                puts " "
                puts "Enter Grade level 6th, 7th or 8th."
                print "Grade level: "
                input1=gets.chomp
                puts " "
                puts "Enter Teacher Subject Math, Science, Lang_Arts or Social Studies."
                print "Subject: "
                input2=gets.chomp
                puts " "
                puts "Enter the Term: Fall, Winter Or Spring."
                print "Term: "
                input3=gets.chomp
                puts " "
                gardes_list=list_grades_for_class(input1, input2, input3)
                puts " "
                puts "                   List of Grades "
                puts " Class: #{input1}  grade #{input2}              Term: #{input3}" 
                puts "          #########################################"
                puts " "
                gardes_list.each do |g|
                      puts "       Name: #{g[:name]}          Percentage Grade: #{g[:percentage_grade]}  "
                      puts " "
                end
                puts "          ###########################################"
                puts " "
                
            when 2
                puts " "
                puts "List of Students with Final Grade less than: X %."
                puts "       Enter the Percentage Grade "
                puts " "
                print "Percentage Grade: "
                input = gets.chomp.to_i
                puts " "
                puts " "
                students = list_of_students_score_less_than(input)
                puts " "
                puts "          List of Students with Final Grade less than: #{input} %."
                puts " "
                puts "          #########################################"
                puts " "

                students.each do |g|
                    puts "       ID: #{g[:id]}     Name: #{g[:name]}     Final Grade: #{g[:final_grade]}  "
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
                    puts "       ID: #{g[:id]}     Name: #{g[:name]}     Final Grade: #{g[:final_grade]}  "
                   end
                puts " " 
            when 4
                puts " "
                puts "         Average  Grade for a Class"
                puts "        #############################"
                puts "Enter the grade level and Subject. "
                puts " "
                puts "Enter Grade level 6th, 7th or 8th."
                print "Grade level: "
                input1=gets.chomp
                puts " "
                puts "Enter Teacher Subject Math, Science, Lang_Arts or Social Studies."
                print "Subject: "
                input2=gets.chomp
                puts " "
                puts " "
                puts " "
                puts "          Average  Grade for #{input1} grade, #{input2} Class."
                puts "          #########################################"
                average_score_for_class(input1,input2)
                puts " "
                puts " "
                puts " " 
                                         
            when 5
                main_menu
            when 6
                exiting
            else
              puts "Error: (#{input_s}) is an invalid value  Enter a number 1 to 6."
              puts " "
              submenu_get_teacher_report
            end
  
end

def submenu_delete_data
    puts "       Select From The Following Options:"
    puts ""
    puts "  [1] Delete Student"
    puts "  [2] Delete Teacher"
    puts "  [3] Delete Student Grade"
    puts "  [4] Back to the main Menu"
    puts "  [5] Exit "
    puts" "
    puts "      Select From The Following Options:"
    input_s =""
    input_s = gets.chomp
    input = input_s.to_i
    case input
        when 1
            puts" "
            puts "     Delete Student"
            puts "Enter the Student ID "
            puts " "
            print "Student ID: "
            input=gets.chomp.to_i
            delete_student(input)
            puts " "
        when 2
            puts" "
            puts "     Delete Teacher"
            puts "Enter the Teacher ID "
            puts " "
            print "Teacher ID: "
            input=gets.chomp.to_i
            delete_teacher(input)
            puts " "
        when 3
            puts" "
            puts "     Delete Student Grade"
            puts "Enter the Student Grade information."
            puts " "
            print "Student ID: "
            input=gets.chomp
            h={student_id: input}
            puts "Enter the Term: Fall, Winter Or Spring."
            puts " "
            print "Term:"
            input=gets.chomp
            h[:term]= input
            puts "Enter Subject Math, Science, Lang_Arts or Social Studies."
            puts " "
            print "Subject:"
            input=gets.chomp
            h[:Subject]= input
            delete_student_grade(h)
            puts " "
            puts " "
            puts " "
        when 4
            main_menu
        when 5
            exiting
        else
          puts "Error: (#{input_s}) is an invalid value  Enter a number 1 to 5."
          puts " "
          submenu_delete_data
        end
end




start_cli

        