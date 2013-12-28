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

  test "Geolocate calls the Zoogle graveyard locator" do
    Zoogle.expects(:graveyard_locator).with(@zombie.graveyard).returns({:latitude => 1, :longitude => 2})
    @zombie.geolocate
  end

  test "Geolocate returns properly formatted lat, long" do
    Zoogle.stubs(:graveyard_locator).with(@zombie.graveyard).returns({:latitude => 2, :longitude => 3})
    assert_equal "2, 3", @zombie.geolocate
  end


end
