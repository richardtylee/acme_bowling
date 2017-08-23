require 'test_helper'

class HelloWorldTest < ActiveSupport::TestCase
  test 'hello world success' do
    skip
  	assert "hello world" == "hello world"
  end

  test 'hello world failure' do
    skip
  	assert "hello world" == "hello worl"
  end

  test 'hello world error' do
    skip
  	foobar
  	assert "hello world" == "hello worl"
  end

  test 'divide by zero' do
    skip
  	assert_raise ZeroDivisionError do
  	  x = 5 / 0
    end
  end
end