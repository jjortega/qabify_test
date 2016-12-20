require 'HTTParty'
require_relative './users'

module DataProvider
  class QabifyApiClient
    include Users

    BASE_URL = "http://52.30.196.41:3000"

    # no headers and body is needed for this version with uri is good enough
    def perform_request(method,uri)
      url = BASE_URL + uri
      HTTParty.send(method,url)
    end
  end
end
