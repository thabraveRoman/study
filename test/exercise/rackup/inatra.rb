module Inatra
  @@handlers {}
  class << self
    def routes(&block)
      instance_eval(&block)
    end

    def get(&block)
      @@store[path] = block
    end

    def call(env)
    end

    def method_missing(method_missing_name, path, &block)
    end
  end
end
