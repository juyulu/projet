require 'test_helper'

class CityTest < ActiveSupport::TestCase
  setup do
    @city = cities(:one)
    @cityWrong = cities(:two)
  end

  test 'weather forecast' do 
     VCR.use_cassette("weather") do
       weather = cities(:one).weather
       puts weather
       assert cities(:one).weather
     end
  end
  
end
