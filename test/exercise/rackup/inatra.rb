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

    def method_missing(missing_method_name, *args, &block)
      func = @@handlers[missing_method_name]
      func.call(args) if func 
    end
  end
end
