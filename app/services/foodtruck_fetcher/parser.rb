module FoodtruckFetcher
  class Parser
    def initialize(response)
      @response = response
    end

    def message
      oldest_post.fetch(:message) { '' }
    end

    private

    attr_reader :response

    def oldest_post
      Array(response).last.to_h.deep_symbolize_keys
    end
  end
end
