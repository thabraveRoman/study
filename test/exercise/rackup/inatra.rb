module Inatra
  @handlers = {}
  class << self
    def routes(&block)
      instance_eval(&block)
    end

    def call(env)
      request_method = env['REQUEST_METHOD'].to_sym.downcase
      path = env['PATH_INFO']
      func = @handlers[request_method][path]
      func ? func.call : [404, {}, 'Not Found']
    end

    def method_missing(missing_method_name, *args, &block)
      if args.length == 1
        @handlers[missing_method_name] ||= {}
        @handlers[missing_method_name][args[0]] = block
      else
        super
      end
    end

    def respond_to_missing?(missing_method_name)
      @handlers.include?(missing_method_name)
    end
  end
end
