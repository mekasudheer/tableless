module Tableless
  class DummyAdapter < ActiveRecord::ConnectionAdapters::AbstractAdapter
    def initialize(*)
      super
      @schema_cache = Tableless::SchemaCache.new
    end

    def schema_cache
      @schema_cache
    end

    def exec_query(*)
      ActiveRecord::Result.empty
    end
  end
end
