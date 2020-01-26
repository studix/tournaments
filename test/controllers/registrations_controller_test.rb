require 'test_helper'

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
   test "the truth" do
      @tournament = Tournament.new()
      @tournament.title = "Clubmeisterschaften"
      @tournament.spielplan_verfuegbar_datum = "2019-07-18"

      assert_equal("", @tournament.to_h)
   end
end
