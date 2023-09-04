class InstructorSerializer < ActiveModel::Serializer
  attributes :id , :name, :number_of_students
  has_many :students

  def number_of_students
    self.object.students.count
  end
end
