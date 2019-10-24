
        ####### To students table ########


# Student.create(name: "Mike", grade: "6th")
# Student.create(name: "Jake", grade: "6th")
# Student.create(name: "Sara", grade: "6th")
# Student.create(name: "Vacondio", grade: "6th")
# Student.create(name: "Stefan", grade: "6th")
# Student.create(name: "Alexander", grade: "6th")
# Student.create(name: "Stephen", grade: "6th")
# Student.create(name: "John", grade: "6th")
# Student.create(name: "Alexei", grade: "6th")
# Student.create(name: "Stephen", grade: "6th")
# Student.create(name: "Mark", grade: "6th")
# Student.create(name: "Kengo", grade: "6th")
# Student.create(name: "Sanford", grade: "6th")
# Student.create(name: "Timothy", grade: "6th")
# Student.create(name: "Bruno", grade: "6th")
# Student.create(name: "Andreas", grade: "6th")
# Student.create(name: "Marius", grade: "6th")
# Student.create(name: "Daiva", grade: "6th")
# Student.create(name: "Sara", grade: "6th")
# Student.create(name: "Troy", grade: "6th")
# Student.create(name: "Nick", grade: "6th")
# Student.create(name: "Christoph", grade: "6th")
# Student.create(name: "Michael", grade: "6th")

# Student.create(name: "Samuel", grade: "7th")
# Student.create(name: "Olaf", grade: "7th")
# Student.create(name: "Oscar", grade: "7th")
# Student.create(name: "Barack", grade: "7th")
# Student.create(name: "Pierre", grade: "7th")
# Student.create(name: "Brett", grade: "7th")
# Student.create(name: "Silviu", grade: "7th")
# Student.create(name: "Robert", grade: "7th")
# Student.create(name: "Stephen", grade: "7th")
# Student.create(name: "Daniel", grade: "7th")
# Student.create(name: "Alexei", grade: "7th")
# Student.create(name: "Stephen", grade: "7th")
# Student.create(name: "Nick", grade: "7th")
# Student.create(name: "Kengo", grade: "7th")
# Student.create(name: "Xiaobo", grade: "7th")
# Student.create(name: "Timothy", grade: "7th")
# Student.create(name: "Wilson", grade: "7th")
# Student.create(name: "George", grade: "7th")
# Student.create(name: "Vaidas", grade: "7th")
# Student.create(name: "Christoph", grade: "7th")
# Student.create(name: "Jan", grade: "7th")
# Student.create(name: "Raffael", grade: "7th")
# Student.create(name: "Derek", grade: "7th")
# Student.create(name: "Duff", grade: "7th")
# Student.create(name: "Abdias", grade: "7th")

# Student.create(name: "Xiaobo", grade: "8th")
# Student.create(name: "Thomas", grade: "8th")
# Student.create(name: "Daiva", grade: "8th")
# Student.create(name: "Colin", grade: "8th")
# Student.create(name: "Roman", grade: "8th")
# Student.create(name: "Duff", grade: "8th")
# Student.create(name: "Michael", grade: "8th")
# Student.create(name: "Debbie", grade: "8th")
# Student.create(name: "Boesch", grade: "8th")
# Student.create(name: "Oberndorfer", grade: "8th")
# Student.create(name: "Johnson", grade: "8th")
# Student.create(name: "Lira", grade: "8th")
# Student.create(name: "Ardelean", grade: "8th")
# Student.create(name: "McKenzie", grade: "8th")
# Student.create(name: "Choutet", grade: "8th")
# Student.create(name: "Rollo", grade: "8th")
# Student.create(name: "Pena", grade: "8th")
# Student.create(name: "Druemmer", grade: "8th")
# Student.create(name: "Chantaraud", grade: "8th")
# Student.create(name: "Smith", grade: "8th")
# Student.create(name: "Wagner", grade: "8th")
# Student.create(name: "Mettyear", grade: "8th")
# Student.create(name: "Cohen", grade: "8th")

     ######to teachers table ########

# Teacher.create(name: "Choutet", grade: "6th", subject: "Math")
# Teacher.create(name: "Rollo", grade: "6th", subject: "Science")
# Teacher.create(name: "Pena", grade: "6th", subject: "Lang_Arts")
# Teacher.create(name: "Druemmer", grade: "6th", subject: "Social Studies")
# Teacher.create(name: "Chantaraud", grade: "7th", subject: "Math")
# Teacher.create(name: "Smith", grade: "7th", subject: "Science")
# Teacher.create(name: "Wagner", grade: "7th", subject: "Lang_Arts")
# Teacher.create(name: "Mettyear", grade: "7th", subject: "Social Studies")
# Teacher.create(name: "Cohen", grade: "8th", subject: "Math")
# Teacher.create(name: "Wagner", grade: "8th", subject: "Science")
# Teacher.create(name: "Mettyear", grade: "8th", subject: "Lang_Arts")
# Teacher.create(name: "Cohen", grade: "8th", subject: "Social Studies")

  ######to students_teachers table ########





#   def  create_subject
#     student_ar = Student.all 
#     teacher_ar = Teacher.all
#     student_ar.each do |student|
#         teacher_ar.each do |teacher|
#             if teacher.grade == student.grade
#                 (subject= StudentsTeacher.new(student_id: student.id, teacher_id: teacher.id, grade: student.grade, subject: teacher.subject) 
#                 subject.save)
#             end
#         end 
#     end
#   end 
#   create_subject

########### to grades table ##########

# Grade.create(student_id: 17, term: "Fall", year: 2019, subject: "Math", percentage_grade: 85)
# Grade.create(student_id: 18, term: "Fall", year: 2019, subject: "Math", percentage_grade: 90)
# Grade.create(student_id: 19, term: "Fall", year: 2019, subject: "Math", percentage_grade: 75)
# Grade.create(student_id: 20, term: "Fall", year: 2019, subject: "Math", percentage_grade: 60)
# Grade.create(student_id: 21, term: "Fall", year: 2019, subject: "Math", percentage_grade: 98)
# Grade.create(student_id: 22, term: "Fall", year: 2019, subject: "Math", percentage_grade: 89)
# Grade.create(student_id: 23, term: "Fall", year: 2019, subject: "Math", percentage_grade: 65)
# Grade.create(student_id: 24, term: "Fall", year: 2019, subject: "Math", percentage_grade: 67)
# Grade.create(student_id: 25, term: "Fall", year: 2019, subject: "Math", percentage_grade: 66)
# Grade.create(student_id: 26, term: "Fall", year: 2019, subject: "Math", percentage_grade: 48)
# Grade.create(student_id: 27, term: "Fall", year: 2019, subject: "Math", percentage_grade: 88)
# Grade.create(student_id: 28, term: "Fall", year: 2019, subject: "Math", percentage_grade: 76)

# Grade.create(student_id: 17, term: "Fall", year: 2019, subject: "Science", percentage_grade: 85)
# Grade.create(student_id: 18, term: "Fall", year: 2019, subject: "Science", percentage_grade: 40)
# Grade.create(student_id: 19, term: "Fall", year: 2019, subject: "Science", percentage_grade: 85)
# Grade.create(student_id: 20, term: "Fall", year: 2019, subject: "Science", percentage_grade: 90)
# Grade.create(student_id: 21, term: "Fall", year: 2019, subject: "Science", percentage_grade: 98)
# Grade.create(student_id: 22, term: "Fall", year: 2019, subject: "Science", percentage_grade: 89)
# Grade.create(student_id: 23, term: "Fall", year: 2019, subject: "Science", percentage_grade: 65)
# Grade.create(student_id: 24, term: "Fall", year: 2019, subject: "Science", percentage_grade: 77)
# Grade.create(student_id: 25, term: "Fall", year: 2019, subject: "Science", percentage_grade: 66)
# Grade.create(student_id: 26, term: "Fall", year: 2019, subject: "Science", percentage_grade: 46)
# Grade.create(student_id: 27, term: "Fall", year: 2019, subject: "Science", percentage_grade: 88)
# Grade.create(student_id: 28, term: "Fall", year: 2019, subject: "Science", percentage_grade: 76)

# Grade.create(student_id: 17, term: "Fall", year: 2019, subject: "Lang_Arts", percentage_grade: 95)
# Grade.create(student_id: 18, term: "Fall", year: 2019, subject: "Lang_Arts", percentage_grade: 80)
# Grade.create(student_id: 19, term: "Fall", year: 2019, subject: "Lang_Arts", percentage_grade: 75)
# Grade.create(student_id: 20, term: "Fall", year: 2019, subject: "Lang_Arts", percentage_grade: 90)
# Grade.create(student_id: 21, term: "Fall", year: 2019, subject: "Lang_Arts", percentage_grade: 78)
# Grade.create(student_id: 22, term: "Fall", year: 2019, subject: "Lang_Arts", percentage_grade: 99)
# Grade.create(student_id: 23, term: "Fall", year: 2019, subject: "Lang_Arts", percentage_grade: 75)
# Grade.create(student_id: 24, term: "Fall", year: 2019, subject: "Lang_Arts", percentage_grade: 87)
# Grade.create(student_id: 25, term: "Fall", year: 2019, subject: "Lang_Arts", percentage_grade: 76)
# Grade.create(student_id: 26, term: "Fall", year: 2019, subject: "Lang_Arts", percentage_grade: 46)
# Grade.create(student_id: 27, term: "Fall", year: 2019, subject: "Lang_Arts", percentage_grade: 88)
# Grade.create(student_id: 28, term: "Fall", year: 2019, subject: "Lang_Arts", percentage_grade: 76)

# Grade.create(student_id: 17, term: "Fall", year: 2019, subject: "Social Studies", percentage_grade: 95)
# Grade.create(student_id: 18, term: "Fall", year: 2019, subject: "Social Studies", percentage_grade: 80)
# Grade.create(student_id: 19, term: "Fall", year: 2019, subject: "Social Studies", percentage_grade: 75)
# Grade.create(student_id: 20, term: "Fall", year: 2019, subject: "Social Studies", percentage_grade: 90)
# Grade.create(student_id: 21, term: "Fall", year: 2019, subject: "Social Studies", percentage_grade: 78)
# Grade.create(student_id: 22, term: "Fall", year: 2019, subject: "Social Studies", percentage_grade: 99)
# Grade.create(student_id: 23, term: "Fall", year: 2019, subject: "Social Studies", percentage_grade: 75)
# Grade.create(student_id: 24, term: "Fall", year: 2019, subject: "Social Studies", percentage_grade: 87)
# Grade.create(student_id: 25, term: "Fall", year: 2019, subject: "Social Studies", percentage_grade: 76)
# Grade.create(student_id: 26, term: "Fall", year: 2019, subject: "Social Studies", percentage_grade: 46)
# Grade.create(student_id: 27, term: "Fall", year: 2019, subject: "Social Studies", percentage_grade: 88)
# Grade.create(student_id: 28, term: "Fall", year: 2019, subject: "Social Studies", percentage_grade: 76)


# Grade.create(student_id: 17, term: "Winter", year: 2019, subject: "Math", percentage_grade: 75)
# Grade.create(student_id: 18, term: "Winter", year: 2019, subject: "Math", percentage_grade: 90)
# Grade.create(student_id: 19, term: "Winter", year: 2019, subject: "Math", percentage_grade: 75)
# Grade.create(student_id: 20, term: "Winter", year: 2019, subject: "Math", percentage_grade: 60)
# Grade.create(student_id: 21, term: "Winter", year: 2019, subject: "Math", percentage_grade: 98)
# Grade.create(student_id: 22, term: "Winter", year: 2019, subject: "Math", percentage_grade: 89)
# Grade.create(student_id: 23, term: "Winter", year: 2019, subject: "Math", percentage_grade: 65)
# Grade.create(student_id: 24, term: "Winter", year: 2019, subject: "Math", percentage_grade: 67)
# Grade.create(student_id: 25, term: "Winter", year: 2019, subject: "Math", percentage_grade: 66)
# Grade.create(student_id: 26, term: "Winter", year: 2019, subject: "Math", percentage_grade: 48)
# Grade.create(student_id: 27, term: "Winter", year: 2019, subject: "Math", percentage_grade: 78)
# Grade.create(student_id: 28, term: "Winter", year: 2019, subject: "Math", percentage_grade: 86)

# Grade.create(student_id: 17, term: "Winter", year: 2019, subject: "Science", percentage_grade: 95)
# Grade.create(student_id: 18, term: "Winter", year: 2019, subject: "Science", percentage_grade: 99)
# Grade.create(student_id: 19, term: "Winter", year: 2019, subject: "Science", percentage_grade: 87)
# Grade.create(student_id: 20, term: "Winter", year: 2019, subject: "Science", percentage_grade: 97)
# Grade.create(student_id: 21, term: "Winter", year: 2019, subject: "Science", percentage_grade: 97)
# Grade.create(student_id: 22, term: "Winter", year: 2019, subject: "Science", percentage_grade: 89)
# Grade.create(student_id: 23, term: "Winter", year: 2019, subject: "Science", percentage_grade: 65)
# Grade.create(student_id: 24, term: "Winter", year: 2019, subject: "Science", percentage_grade: 77)
# Grade.create(student_id: 25, term: "Winter", year: 2019, subject: "Science", percentage_grade: 66)
# Grade.create(student_id: 26, term: "Winter", year: 2019, subject: "Science", percentage_grade: 46)
# Grade.create(student_id: 27, term: "Winter", year: 2019, subject: "Science", percentage_grade: 88)
# Grade.create(student_id: 28, term: "Winter", year: 2019, subject: "Science", percentage_grade: 76)

# Grade.create(student_id: 17, term: "Winter", year: 2019, subject: "Lang_Arts", percentage_grade: 95)
# Grade.create(student_id: 18, term: "Winter", year: 2019, subject: "Lang_Arts", percentage_grade: 80)
# Grade.create(student_id: 19, term: "Winter", year: 2019, subject: "Lang_Arts", percentage_grade: 75)
# Grade.create(student_id: 20, term: "Winter", year: 2019, subject: "Lang_Arts", percentage_grade: 90)
# Grade.create(student_id: 21, term: "Winter", year: 2019, subject: "Lang_Arts", percentage_grade: 78)
# Grade.create(student_id: 22, term: "Winter", year: 2019, subject: "Lang_Arts", percentage_grade: 99)
# Grade.create(student_id: 23, term: "Winter", year: 2019, subject: "Lang_Arts", percentage_grade: 75)
# Grade.create(student_id: 24, term: "Winter", year: 2019, subject: "Lang_Arts", percentage_grade: 87)
# Grade.create(student_id: 25, term: "Winter", year: 2019, subject: "Lang_Arts", percentage_grade: 76)
# Grade.create(student_id: 26, term: "Winter", year: 2019, subject: "Lang_Arts", percentage_grade: 46)
# Grade.create(student_id: 27, term: "Winter", year: 2019, subject: "Lang_Arts", percentage_grade: 88)
# Grade.create(student_id: 28, term: "Winter", year: 2019, subject: "Lang_Arts", percentage_grade: 76)

# Grade.create(student_id: 17, term: "Winter", year: 2019, subject: "Social Studies", percentage_grade: 95)
# Grade.create(student_id: 18, term: "Winter", year: 2019, subject: "Social Studies", percentage_grade: 80)
# Grade.create(student_id: 19, term: "Winter", year: 2019, subject: "Social Studies", percentage_grade: 75)
# Grade.create(student_id: 20, term: "Winter", year: 2019, subject: "Social Studies", percentage_grade: 90)
# Grade.create(student_id: 21, term: "Winter", year: 2019, subject: "Social Studies", percentage_grade: 78)
# Grade.create(student_id: 22, term: "Winter", year: 2019, subject: "Social Studies", percentage_grade: 99)
# Grade.create(student_id: 23, term: "Winter", year: 2019, subject: "Social Studies", percentage_grade: 65)
# Grade.create(student_id: 24, term: "Winter", year: 2019, subject: "Social Studies", percentage_grade: 47)
# Grade.create(student_id: 25, term: "Winter", year: 2019, subject: "Social Studies", percentage_grade: 56)
# Grade.create(student_id: 26, term: "Winter", year: 2019, subject: "Social Studies", percentage_grade: 66)
# Grade.create(student_id: 27, term: "Winter", year: 2019, subject: "Social Studies", percentage_grade: 78)
# Grade.create(student_id: 28, term: "Winter", year: 2019, subject: "Social Studies", percentage_grade: 76)


# Grade.create(student_id: 17, term: "Spring", year: 2019, subject: "Math", percentage_grade: 89)
# Grade.create(student_id: 18, term: "Spring", year: 2019, subject: "Math", percentage_grade: 99)
# Grade.create(student_id: 19, term: "Spring", year: 2019, subject: "Math", percentage_grade: 79)
# Grade.create(student_id: 20, term: "Spring", year: 2019, subject: "Math", percentage_grade: 69)
# Grade.create(student_id: 21, term: "Spring", year: 2019, subject: "Math", percentage_grade: 99)
# Grade.create(student_id: 22, term: "Spring", year: 2019, subject: "Math", percentage_grade: 87)
# Grade.create(student_id: 23, term: "Spring", year: 2019, subject: "Math", percentage_grade: 68)
# Grade.create(student_id: 24, term: "Spring", year: 2019, subject: "Math", percentage_grade: 65)
# Grade.create(student_id: 25, term: "Spring", year: 2019, subject: "Math", percentage_grade: 64)
# Grade.create(student_id: 26, term: "Spring", year: 2019, subject: "Math", percentage_grade: 48)
# Grade.create(student_id: 27, term: "Spring", year: 2019, subject: "Math", percentage_grade: 86)
# Grade.create(student_id: 28, term: "Spring", year: 2019, subject: "Math", percentage_grade: 79)

# Grade.create(student_id: 17, term: "Spring", year: 2019, subject: "Science", percentage_grade: 85)
# Grade.create(student_id: 18, term: "Spring", year: 2019, subject: "Science", percentage_grade: 80)
# Grade.create(student_id: 19, term: "Spring", year: 2019, subject: "Science", percentage_grade: 85)
# Grade.create(student_id: 20, term: "Spring", year: 2019, subject: "Science", percentage_grade: 70)
# Grade.create(student_id: 21, term: "Spring", year: 2019, subject: "Science", percentage_grade: 88)
# Grade.create(student_id: 22, term: "Spring", year: 2019, subject: "Science", percentage_grade: 89)
# Grade.create(student_id: 23, term: "Spring", year: 2019, subject: "Science", percentage_grade: 45)
# Grade.create(student_id: 24, term: "Spring", year: 2019, subject: "Science", percentage_grade: 74)
# Grade.create(student_id: 25, term: "Spring", year: 2019, subject: "Science", percentage_grade: 69)
# Grade.create(student_id: 26, term: "Spring", year: 2019, subject: "Science", percentage_grade: 47)
# Grade.create(student_id: 27, term: "Spring", year: 2019, subject: "Science", percentage_grade: 88)
# Grade.create(student_id: 28, term: "Spring", year: 2019, subject: "Science", percentage_grade: 79)

# Grade.create(student_id: 17, term: "Spring", year: 2019, subject: "Lang_Arts", percentage_grade: 95)
# Grade.create(student_id: 18, term: "Spring", year: 2019, subject: "Lang_Arts", percentage_grade: 80)
# Grade.create(student_id: 19, term: "Spring", year: 2019, subject: "Lang_Arts", percentage_grade: 85)
# Grade.create(student_id: 20, term: "Spring", year: 2019, subject: "Lang_Arts", percentage_grade: 80)
# Grade.create(student_id: 21, term: "Spring", year: 2019, subject: "Lang_Arts", percentage_grade: 88)
# Grade.create(student_id: 22, term: "Spring", year: 2019, subject: "Lang_Arts", percentage_grade: 99)
# Grade.create(student_id: 23, term: "Spring", year: 2019, subject: "Lang_Arts", percentage_grade: 35)
# Grade.create(student_id: 24, term: "Spring", year: 2019, subject: "Lang_Arts", percentage_grade: 47)
# Grade.create(student_id: 25, term: "Spring", year: 2019, subject: "Lang_Arts", percentage_grade: 56)
# Grade.create(student_id: 26, term: "Spring", year: 2019, subject: "Lang_Arts", percentage_grade: 66)
# Grade.create(student_id: 27, term: "Spring", year: 2019, subject: "Lang_Arts", percentage_grade: 78)
# Grade.create(student_id: 28, term: "Spring", year: 2019, subject: "Lang_Arts", percentage_grade: 86)

# Grade.create(student_id: 17, term: "Spring", year: 2019, subject: "Social Studies", percentage_grade: 95)
# Grade.create(student_id: 18, term: "Spring", year: 2019, subject: "Social Studies", percentage_grade: 80)
# Grade.create(student_id: 19, term: "Spring", year: 2019, subject: "Social Studies", percentage_grade: 75)
# Grade.create(student_id: 20, term: "Spring", year: 2019, subject: "Social Studies", percentage_grade: 70)
# Grade.create(student_id: 21, term: "Spring", year: 2019, subject: "Social Studies", percentage_grade: 48)
# Grade.create(student_id: 22, term: "Spring", year: 2019, subject: "Social Studies", percentage_grade: 89)
# Grade.create(student_id: 23, term: "Spring", year: 2019, subject: "Social Studies", percentage_grade: 35)
# Grade.create(student_id: 24, term: "Spring", year: 2019, subject: "Social Studies", percentage_grade: 47)
# Grade.create(student_id: 25, term: "Spring", year: 2019, subject: "Social Studies", percentage_grade: 96)
# Grade.create(student_id: 26, term: "Spring", year: 2019, subject: "Social Studies", percentage_grade: 86)
# Grade.create(student_id: 27, term: "Spring", year: 2019, subject: "Social Studies", percentage_grade: 78)
# Grade.create(student_id: 28, term: "Spring", year: 2019, subject: "Social Studies", percentage_grade: 76)































