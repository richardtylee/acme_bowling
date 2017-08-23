require 'test_helper'

class ParseTest < ActiveSupport::TestCase
  test 'Parse.parse(): Perfect Game' do
  	assert Parse.parse("XXXXXXXXXXXX") == [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
  end

  test 'Parse.parse(): null game' do
    assert Parse.parse("--------------------") == [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  end

  test 'Parse.parse(): one spare' do
  	assert Parse.parse("9/------------------") == [9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  end

  test 'Parse.convert(): strike' do
  	assert Parse.convert("X") == 10
  end

  test 'Parse.convert(): gutter' do
  	assert Parse.convert("-") == 0
  end

  test 'Parse.convert(): spare' do
  	assert Parse.convert("/") == "/"
  end

  test 'Parse.convert(): 1-9' do
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

  test 'Parse.spare()' do
  	assert Parse.spare("-") == 10
  	assert Parse.spare(1) == 9
  	assert Parse.spare(2) == 8
  	assert Parse.spare(3) == 7
  	assert Parse.spare(4) == 6
  	assert Parse.spare(5) == 5
  	assert Parse.spare(6) == 4
  	assert Parse.spare(7) == 3
  	assert Parse.spare(8) == 2
  	assert Parse.spare(9) == 1
  end
end