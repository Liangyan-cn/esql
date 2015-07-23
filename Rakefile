task :default => [:esql]

task :esql do
  require 'rubygems'
  $:.unshift File.join(File.dirname(__FILE__), 'lib')
  require File.join(File.dirname(__FILE__), 'lib', 'esql')

  args = ARGV.clone
  task = args.shift
  sql_file = args.shift
  raw_context = args

  context = raw_context.map{|p| p.split(/[=:]/)}.to_h

  puts "#"*30
  puts "# Welcome Esql:"

  puts "#"*30
  puts "# Esql: "
  puts "#{sql_file}"

  puts "#"*30
  puts "# Context:"
  puts "#{context}"

  puts "#"*30
  puts "# SQL:\n"
  puts Esql::Base.to_sql(sql_file, context)

  ARGV.each do |arg|
    task arg.to_sym do ; end
  end
end

