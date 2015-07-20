Gem::Specification.new do |s|
  s.name        = 'esql'
  s.version     = '0.0.1'
  s.author      = 'Liang Yan'
  s.summary     = "Esql"
  s.description = "A sql template using erubis"
  s.homepage    = 'https://github.com/Liangyan-cn/esql'
  s.license     = 'MIT'

  s.files         = Dir["{lib}/**/*"]
  s.require_paths = ["lib"]

  s.add_dependency "erubis", "~>2.7.0"
end
