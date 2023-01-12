require_relative 'alfred_helper'

input = ARGV.first.gsub("'", "")
workflow = Alfred::Workflow.new

# Cleaning text and lower casing all words
pieces = input.gsub("..", ".").split(/[?.!]/)
length = pieces.length

output = Alfred::Item.new({
  title: "#{length}",
  subtitle: "sentence#{'s' if length > 1}",
  arg: input,
  icon: 'count-3.png' })

workflow << output
puts workflow
