require "scrawls/httpengine/httprecognizer/version"
require "httprecognizer"

module Scrawls
  module Httpengine
    class Httprecognizer

      def initialize( webserver )
        @recognizer = HttpRecognizer.new webserver
      end

      def receive_data data
        @recognizer.receive_data data
      end

      def done?
        @recognizer.done_parsing?
      end

      def env
        {
          "SERVER_SOFTWARE" => "Scrawls Httprecognizer v. #{Scrawls::Httpengine::Httprecognizer::VERSION} / #{HttpRecognizer::VERSION}",
          "REQUEST_METHOD"  => @recognizer.request_method,
          "REQUEST_PATH"    => @recognizer.uri,
          "PATH_INFO"       => @recognizer.uri,
          "REQUEST_URI"     => @recognizer.unparsed_uri,
          "HTTP_VERSION"    => @recognizer.http_version,
          "HTTP_HOST"       => @recognizer.name,
          "HTTP_CONNECTION" => @recognizer.keepalive,
          "QUERY_STRING"    => @recognizer.unparsed_uri.split(/\?/,2).last.to_s,
        }
      end

    end
  end
end
