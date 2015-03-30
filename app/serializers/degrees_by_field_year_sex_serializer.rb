class DegreesByFieldYearSexSerializer < ActiveModel::Serializer
  cache key: 'field', expires_in: 1.year
  attributes :field, :level, :year, :sex, :count
  belongs_to :field
end
