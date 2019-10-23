require_relative '../config/environment'

def menus
    require_relative './menu'
end
                            ########## Create new student/teacher ############
                            ##################################################
### Enter a new teacher ###
## A new_teacher take a hash argemnet as h{name:,:,grade:,birthdate:} (birthdate on "MM/DD/YYYY" format)

def new_teacher(h)
    Teacher.create(name: h[:name], subject: h[:subject], grade: h[:grade],birthdate: h[:birthdate])
end

### enter a new Student
## A new_student take a hash argement as h{name:,birthdate:,grade:,gender:} (birthdate on "MM/DD/YYYY" format)

def new_student(h)
    Student.create(name: h[:name], birthdate: h[:birthdate], grade: h[:grade], gender: h[:gender])
end

                            ########## Enter a new Student Grade ############
                            ##################################################

def new_student_grade(h)
    Grade.create(student_id: h[:student_id],term: h[:term], year: h[:year], subject: h[:subject], percentage_grade: h[:percentage_grade])
end
                            ########### Update student/teacher/garde info ###########
                            #########################################################

def update_student(id,h)
   Student.update(id,h)
   if !Student.find_by(id: id) == nil
    Student.update(id,h)
    else puts "this Student id is not exist"
    end
end

def update_student_grade_by_id(id, new_score)
    student=Student.find_by(id: id)
    student.gardes[0].percentage_grade = new_score
    student
end

def update_student_grade(h)
    grade=Grade.find_by(student_id: h[:student_id], term: h[:term], subject: h[:subject])
    if !grade==nil
        Grade.update(grade[:id],h)
    else puts "this record is not exist"
    end
end

def update_teacher(id,h)
    if !Teacher.find_by(id: id) == nil
        Teacher.update(id,h)
    else puts "this Teacher id is not exist"
    end
end
                            ########### Delete Student/Teacher ###########
                            ##############################################

def delete_student(id)
    Student.delete(id)
    StudentsTeacher.delete_by(student_id: id)
    Grade.delete_by(student_id: id)
end
                            
def delete_teacher(id)
    Teacher.delete(id)
    StudentsTeacher.delete_by(teacher_id: id)
end

def delete_student_grade(h)
    grade=Grade.find_by(student_id: h[:student_id], term: h[:term], subject: h[:subject])
    if !grade==nil
        Grade.delete(grade[:id])
    else puts "this record is not exist"
    end
end


                           ########### Generate student grade"###########
                           ##############################################




## final_grade return an array of (id, final_score)
def final_grades
    ar = Student.all.map {|student| {id: student.id, name: student.name}}
    ar.map do |v| 
        sum = 0
        i = 0
        Grade.all.each do |grade|
            if grade.student_id == v[:id]
                 (sum += grade.percentage_grade
                 i += 1)
             end
           end
        {id: v[:id], name: v[:name], final_grade: sum.to_f/i.to_f}
    end     
end


def highest_grade_in_all_subjects
    grade=Grade.find_by(percentage_grade:Grade.maximum('percentage_grade'))
    s=Student.find_by(id:grade[:student_id])
    puts "  "
    puts "#{s.name} got the highest grade: #{grade.percentage_grade}"
    puts "  "
end

def highest_final_grade

end

def final_grade_for(name)
    o=Student.find_by(name: name)
    f=final_grades.select{|h| h[:id]==o.id}
    puts "The final grade for #{name} is: #{f[0][:final_score]}"
end

# list_of_students_score_less_than take a score X as argement and select the student who got less than X score
def list_of_students_score_less_than(x)
    final_grades.select{|student| student[:final_score]<x}
end


def average_score_for_class(grade,subject)
    ar1 =Student.all.select{|s| s.grade == grade}
    ar2 = ar1.map{|s| s.id}
    ar3 = Grade.all.select { |m| m.subject == subject && ar2.include?(m.student_id)}
    ar4 = ar3.map{|s| s.percentage_grade}
    averege =ar4.inject{ |sum, el| sum + el }.to_f/ ar4.size
    teacher_name= Teacher.find_by(grade: grade, subject: subject)[:name]
    puts " "
    puts "The Average grade for #{teacher_name} teacher is: #{averege.round(2)}"
    puts "       subject: #{subject}, #{grade} grade     " 
    puts " "
end
binding.pry
0
# menus
