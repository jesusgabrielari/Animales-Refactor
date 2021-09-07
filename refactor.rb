# Old code to refact
# class Person
#     def initialize(first, last, age, type)
#         @first_name = first
#         @last_name = last
#         @age = age
#         @type = type
#     end
#     def birthday
#         @age += 1
#     end
#     def talk
#         if @type == "Student"
#             pp "Aquí es la clase de programación con Ruby?"
#         elsif @type == "Teacher"
#             pp "Bienvenidos a la clase de programación con Ruby!"
#         elsif @type == "Parent"
#             pp "Aquí es la reunión de apoderados?"
#         end
#     end
#     def introduce
#         if @type == "Student"
#             pp "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
#         elsif @type == "Teacher"
#             pp "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
#         elsif @type == "Parent"
#             pp "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
#         end
#     end
# end

class Person
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end
    def birthday
        @age += 1
    end
end

class Student < Person
    def talk
        pp "Aquí es la clase de programación con Ruby?"
    end
    def introduce
        pp "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher < Person
    def talk
        pp "Bienvenidos a la clase de programación con Ruby!"
    end
    def introduce
        pp "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def talk
        pp "Aquí es la reunión de apoderados?"
    end
    def introduce
        pp "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

FirstSubject = Student.new('Arnoldo', 'Arnoldi', 23)
pp FirstSubject.birthday
FirstSubject.talk
FirstSubject.introduce

SecondSubject = Teacher.new('Brandon', 'Brandi', 36)
pp SecondSubject.birthday
SecondSubject.talk
SecondSubject.introduce

ThirdSubject = Parent.new('OLD', 'SMOKE', 52)
pp ThirdSubject.birthday
ThirdSubject.talk
ThirdSubject.introduce
© 2021 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
