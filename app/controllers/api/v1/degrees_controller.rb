class API::V1::DegreesController < ApplicationController
  def index
    render :json => DegreesByFieldYearSex.where(params.permit(
      :field,    :level,    :sex,   :year,
      field: [], level: [], sex: [], year: []
    )).all
  end
end
