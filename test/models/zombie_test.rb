  require 'test_helper'
  require 'mocha/setup'

class ZombieTest < ActiveSupport::TestCase

  def setup
    @zombie = zombies(:adel)
  end

  test "Decapitate should set status dead again " do

    @zombie.weapon.stubs(:slice).returns("{Adel}")
    @zombie.decapitate
    assert_equal "dead again", @zombie.status
  end

  test "decapitate should call slice method" do
    @zombie.weapon.expects(:slice)
    @zombie.decapitate
  end

  test " geolocate calls the Zoogle graveyard locator" do
    Zoogle.expects(:graveyard_locator).with(@zombie.graveyard).returns({:latitude => 1, :longitude => 2})
    @zombie.geolocate
  end


end
