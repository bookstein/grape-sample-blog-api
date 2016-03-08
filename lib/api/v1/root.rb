# lib/api/v1/root.rb
module API
  module V1
    class Root < Grape::API
      mount API::V1::Quotes
    end
  end
end
