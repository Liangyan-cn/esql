class Esql < Erubis::Eruby
  class << self
    def to_sql(esql_file, context = {})
      to_esql(esql_file).to_sql(context)
    end

    def to_esql(esql_file, default_context = {})
      Esql.new(esql_file, default_context)
    end
  end
  
  attr_accessor :default_context

  def initialize(string, context = {})
    raise "Error: Sql template does not exist" if !File.exist?(string)

    template = File.read(string) 
    
    self.default_context = context || {}
    super(template)
  end

  def to_sql(context = {})
    _context = self.default_context.merge context
    self.evaluate _context
  end

  #def inspect
  #end
end
