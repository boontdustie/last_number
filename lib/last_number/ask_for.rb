require 'active_support/inflector'

module LastNumber
  class AskFor

    def initialize(key, store, store_opts={})
      store = "LastNumber::Store::#{store.to_s.classify}".constantize.new(store_opts)
      @wrangler = Wrangler.new(key, store)
    end

    def last
      @wrangler.last
    end

    def next
      last + 1
    end

    def update(last_number)
      @wrangler.update(last_number)
    end
  end
end
