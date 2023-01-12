require_relative 'alfred_helper'

input = ARGV.first
workflow = Alfred::Workflow.new

# Cleaning text and lower casing all words
length = input.split(' ').size

output = Alfred::Item.new({
  title: "#{length}",
  subtitle: "word#{'s' if length > 1}",
  arg: input,
  icon: 'count-2.png' })

workflow << output
puts workflow
