module LastNumber
  class Store

    def initialize(config)
      # convert keys to symbols
      @config = Hash[*config.flat_map { |k,v| [k.to_sym, v] }]
    end

    def read
      # must return json
      # subclasses must implement
    end

    def update(hash)
      # subclasses must implement
    end
  end
end
