require 'json'

module DataProvider
  class QabifyApiClient
    module Users
      def get_users()
        uri = "/users"
        response = perform_request(:get,uri)
        if response.code != 200
            raise "Failing to get all users"
        end
        JSON.parse(response.body)
      end

      def get_user(id)
        uri = "/users/#{id}"
        response = perform_request(:get,uri)
        if response.code != 200
          raise "Failing to get user with id: #{id}"
        end
        JSON.parse(response.body)
      end
    end
  end
end