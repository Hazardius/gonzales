require 'test_helper'

class HatTest < ActiveSupport::TestCase
  setup do
    Gonzales.initialize!
  end
  context 'loading hat' do
    should 'not call factory' do
      ::FactoryBot.expects(:create).never
      speedy(:hat)
    end
  end
end
