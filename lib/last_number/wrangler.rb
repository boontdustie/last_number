module LastNumber
  class Wrangler

    def initialize(key, store)
      @key = key
      @store = store
    end

    def last
      hash[@key].nil? ? 0 : hash[@key]
    end

    def update(last_number)
      h = hash
      h[@key] = last_number
      @store.update(h)  
    end

    private

    def hash
      @store.read
    end
  end
end
