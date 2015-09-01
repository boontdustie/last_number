require 'active_support/inflector'
require 'json'

module LastNumber
  class Service

    def initialize(key, store, opts={})
      @key = key
      @store = "LastNumber::Store::#{store.to_s.classify}".constantize.new(opts)
    end

    def last
      if @store.record_exists? && !numbers[@key].nil?
        numbers[@key]
      else
        0
      end
    end

    def next
      last + 1
    end

    def save(last_number)
      @store.create_record unless @store.record_exists?

      h = numbers
      h[@key] = last_number
      @store.write(h.to_json)
    end

    private

    def numbers
      JSON.parse(@store.read)
    end
  end
end
