class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        grades = students.order(grade: :desc)
        # students.order(grades: :desc)
        render json: grades
    end

    def highest_grade
        students = Student.order(grade: :desc)
        highest_grade = students.first
        render json: highest_grade
    end
end
