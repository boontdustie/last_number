module LastNumber

  class Store::Memory < LastNumber::Store

    def read
      create_hash
      @hash
    end

    def update(hash)
      @hash = hash
    end

    private

    def create_hash
      if @hash.nil?
        @hash = {}
      end
    end
  end
end
