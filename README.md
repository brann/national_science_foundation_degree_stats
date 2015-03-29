# National Science Foundation - Degree Statistics

Test application for using rails-api with active-model-serializers

loads science and engineering degree [statistics](http://www.nsf.gov/statistics/nsf13327/content.cfm?pub_id=4266&id=2)
and presents them as a searchable api

## Ruby version

  Ruby-2.2.1
  Rails-4.2.1

## Setup

  rake db:reset
  rails s
  http://localhost:3000/api/v1/degrees/
  params can be single or array on any field except count. eg
  http://localhost:3000/api/v1/degrees/?year[]=1990&year[]=1991&level=doctorate
