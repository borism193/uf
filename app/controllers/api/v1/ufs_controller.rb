module Api
    module V1
        class UfsController < V1Controller
            def by_date
                @uf = UfValue.find_by(date: params[:date])
                @client = Client.find_by(name: request.headers["X-CLIENTE"])

                
                render json: @uf
            end
        end
    end
end