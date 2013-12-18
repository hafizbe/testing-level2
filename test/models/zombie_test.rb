  require 'test_helper'

class ZombieTest < ActiveSupport::TestCase
  
  test "Invalid without a name" do 
  	z = Zombie.new 
  	assert !z.valid?, "Name is not being validated" 
  end

  test "Valid with all attributes" do
  	z = zombies(:adel)

  	assert z.valid? , "Zombie was not valid"
  end

  test "Invalid name gives errors messages" do 
  	z = zombies(:adel)
  	z.name = nil
  	z.valid?
  	assert_match /can't be blank/, z.errors[:name].join(",")
  end

  test "Can generate avatar url" do
  	z = zombies(:adel)
  	assert_equal "http://zombietar.com/#{z.id}.jpg" , z.avatar_url, "avatar_url n'est pas egal"
  end

  test "Should respond to tweet" do
  	z = zombies(:adel)
  	assert_respond_to z, :tweets, "No methods tweets for zombie object"
  end

  test "Should contains only tweet that belong to zombie " do
  	z = zombies(:adel)
  	assert z.tweets.all? {|t| t.zombie == z}
  end

end
