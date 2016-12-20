require 'dataProvider/qabifyApiClient/qabify_api_client'

module Models
  class User
    class << self
      def get_by_email(email)
        provider = DataProvider::QabifyApiClient.new
        users = provider.get_users()
        users.each do |user|
          if user["email"] == email
            return provider.get_user(user["id"])
          end
        end
      end
    end
  end
end