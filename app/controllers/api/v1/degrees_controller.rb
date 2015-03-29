class API::V1::DegreesController < ApplicationController
  def index
    # render :json => Degree.where(params.permit(
    render :json => DegreesByFieldYearSex.where(params.permit(
      :field,    :level,    :sex,   :year,
      field: [], level: [], sex: [], year: []
    )).all
  end
end
