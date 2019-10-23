require_relative '../config/environment'

# def print1(a)
# puts "Hello Rachid"
# if a == 1
#     puts "nice"
#     highest_grade
# elsif a == 2
#     puts "enter the name of student"
#     puts "final grafe for student:"
#      b = gets.chomp
#      final_grade_for(b)
# end 
# end
def menu
    puts "Enter the sub-menu number of witch you like to do"
    puts ""
    puts "  [1] Create new student/teacher"
    puts "  [2] Enter new student grade"
    puts "  [3] Generate student grade"
    puts "  [4] Get Teacher report"
    puts "  [5] Delete data"
    puts "  [6] Update student/teacher/garde info"
    puts" "
    # a=gets.chomp
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
    menu
end

header




# def one_app
#     highest_grade
#     puts "thanks"
# end
# def this
#     a=0
#     a=gets.strip.to_i
#     if a==1
#         one_app
#         puts"thanks"
#     elsif a==2
#         puts "yeah the number is #{a}"
#     else puts "Bey"
#     end
# end
# this
        