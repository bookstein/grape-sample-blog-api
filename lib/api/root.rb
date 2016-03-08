module API
  class Root < Grape::API
    prefix 'api'
    mount API::V1::Root # is this a grape method "mount" or Rack?
  end
end
