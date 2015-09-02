module LastNumber
  class Store

    def initialize(config)
      @config = {}
      config.each { |k,v| @config[k.to_sym] = v }
    end

    def read
      # unimplemented
      # Should return json
    end

    def update(hash)
      # unimplemented
    end
  end
end
