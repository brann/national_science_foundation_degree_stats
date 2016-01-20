class FieldSerializer < ActiveModel::Serializer
  cache key: 'field', expires_in: 1.year
  attributes :name, :id
  # belongs_to :field
  # attribute :field, :key => :parent_field
end
