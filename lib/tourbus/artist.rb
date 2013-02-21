module Tourbus
  class Artist < Client
    class << self
      def fetch(params)
        identifier = artist_identifier(params)
        response = get("/artists/#{URI.encode(identifier)}", options)
        process_response(response)
      end

    end
  end
end

