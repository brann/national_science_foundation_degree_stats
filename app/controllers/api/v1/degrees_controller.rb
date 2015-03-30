class API::V1::DegreesController < ApplicationController
  def index
    @results = DegreesByFieldYearSex.where(params.permit(
      :field,    :level,    :sex,   :year,
      field: [], level: [], sex: [], year: []
    )).all

    render :json => @results, meta: { total: "total" }, root: "degrees"
  end
end
