module API
  module V1
    class Quotes < Grape::API
      version 'v1'
      format :json

      resource :quotes do

        desc "Quotes list"
        get do
          {"quotes" => "Hi!"}
        end

        desc "Quotes show"
        params do
          requires :id, type: Integer, desc: 'Quote ID.'
        end
        route_param :id do
          get do
            {"quotes" => "This is an inspirational quote"}
          end
        end

        desc "Quotes create"
        params do
          requires :quote, type: String, desc: 'Your quote.'
        end
        post do
          {"created_quote" => params[:quote]}
        end

        desc "Quotes delete"
        params do
          requires :quote_id, type: String, desc: 'Your quote ID.'
        end
        delete do
          {"deleted_quote" => params[:quote_id]}
        end

        desc "Quotes update"
        params do
          requires :quote_id, type: String, desc: 'Your quote ID.'
        end
        put do
          {"updated_quote" => params[:quote_id]}
        end

        desc "Quotes favorite"
        params do
          requires :quote_id, type: String, desc: 'Your quote ID.'
        end
        route_param :id do
          put 'update' do
            {"favorited_quote" => params[:quote_id]}
          end
        end
      end
    end
  end
end

