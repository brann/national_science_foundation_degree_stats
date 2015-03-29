class FieldSerializer < ActiveModel::Serializer
  attributes :name, :id

  has_many :degrees_by_field_year_sex
end
