require 'test_helper'

class ShoeTest < ActiveSupport::TestCase
  setup do
    Gonzales.initialize!
  end
  context 'loading shoe' do
    should 'not call factory' do
      ::FactoryBot.expects(:create).never
      speedy(:shoe)
    end
  end
end
