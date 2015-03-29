class DegreesByFieldYearSexSerializer < ActiveModel::Serializer
  attributes :field, :level, :year, :sex, :count

  belongs_to :field
end
