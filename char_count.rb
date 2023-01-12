require_relative 'alfred_helper'

input = ARGV.first
workflow = Alfred::Workflow.new

length = input.length
output = Alfred::Item.new({
  title: "#{length}",
  subtitle: "character#{'s' if length > 1}",
  arg: input,
  icon: 'count.png' })

workflow << output
puts workflow
