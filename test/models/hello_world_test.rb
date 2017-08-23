require 'test_helper'

class HelloWorldTest < ActiveSupport::TestCase
  test 'hello world success' do
  	#foobar
  	assert "hello world" == "hello world"
  end

  test 'hello world failure' do
  	#foobar
  	assert "hello world" == "hello worl"
  end

  test 'hello world error' do
  	foobar
  	assert "hello world" == "hello worl"
  end

  test 'divide by zero' do
  	assert_raise ZeroDivisionError do
  	  x = 5 / 0
    end
  end
end