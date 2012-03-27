require 'active_support'

module ElasticSearch
  module Encoding
    class JSON < Base
      def encode(object)
        ActiveSupport::JSON.encode(object)
      end

      def decode(string)
        ActiveSupport::JSON.decode(string)
      end

      def is_encoded?(object)
        object.is_a?(String)
      end
    end
  end
end
