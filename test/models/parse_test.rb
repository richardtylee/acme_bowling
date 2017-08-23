require 'test_helper'

class ParseTest < ActiveSupport::TestCase
  test 'Perfect Game' do
  	# Given
    input = "XXXXXXXXXXXX"

    # When
    result = Parse.parse(input)
    output = [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]

  	# Then
  	assert result == output
  end

  test 'null game' do
  	input = "----------"

  	result = Parse.parse(input)
    output = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

    puts result.to_s
    puts output.to_s

    assert result == output
  end

  test 'one spare' do
  	input = '9/------------------'
  	result = Parse.parse(input)
  	output = [9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

  	assert result == output
  end

  test 'strike' do
  	input = "X"
  	result = Parse.convert(input)
  	output = 10

  	assert result == output
  end

  test 'gutter' do
  	input = "-"
  	result = Parse.convert(input)
  	output = 0

  	assert result == output
  end

  test 'convert spare' do
  	assert Parse.convert("/") == "/"
  end

  test '1-9' do
  	assert Parse.convert("0") == 0
  	assert Parse.convert("1") == 1
  	assert Parse.convert("2") == 2
  	assert Parse.convert("3") == 3
  	assert Parse.convert("4") == 4
  	assert Parse.convert("5") == 5
  	assert Parse.convert("6") == 6
  	assert Parse.convert("7") == 7
  	assert Parse.convert("8") == 8
  	assert Parse.convert("9") == 9
  end

  test 'spare' do
  	assert Parse.spare(0, "/") == 10
  	assert Parse.spare(1, "/") == 9
  	assert Parse.spare(2, "/") == 8
  	assert Parse.spare(3, "/") == 7
  	assert Parse.spare(4, "/") == 6
  	assert Parse.spare(5, "/") == 5
  	assert Parse.spare(6, "/") == 4
  	assert Parse.spare(7, "/") == 3
  	assert Parse.spare(8, "/") == 2
  	assert Parse.spare(9, "/") == 1
  end
end