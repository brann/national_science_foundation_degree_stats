class API::V1::FieldsController < ApplicationController
  def index
    @results = Field.all

    render :json => @results, meta: { total: "total" }, root: "fields"
  end
end
