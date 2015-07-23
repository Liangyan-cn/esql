module Esql
  module SqlEnhance
    def escaped_expr(code)
      if code.is_a?(String)
        "::Esql::SqlEnhance.sql_escape(#{code})"
      else
        code
      end
    end

    #def add_expr_escaped(src, code)
    #  src << " #{@bufvar} << " << escaped_expr(code) << ';'
    #end

    def self.sql_escape(s)
      s.gsub(/\\/, '\&\&').gsub(/'/, "''")
    end
  end
end
