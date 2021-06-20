require 'test_helper'

class ActorTest < ActiveSupport::TestCase
# Errors on non-existing fields (Actor.new(), one assertion for each field, except weight)
test "detect non-existing fields " do
  actor = Actor.new(
    #id:"4",
    #hobby:"music",
    #family:"mom",
    name:"Kim",
    real_name:"Jibin" )
  #assert actor.errors[:id].any?
  #assert actor.errors[:hobby].any?
  #assert actor.errors[:family].any?
  assert actor.errors[:name].any?
  assert actor.errors[:real_name].any?
end

# Errors on empty fields (one assertion for each field, except weight)
  test "detect empty data" do
    actor = Actor.new()
    assert actor.invalid?
    assert actor.errors[:name].any?
    assert actor.errors[:real_name].any?
    assert actor.errors[:birth_date].any?
    assert actor.errors[:origin].any?
    assert actor.errors[:height].any?
    assert actor.errors[:gender].any?
    assert actor.errors[:blood_type].any?
  end

# Errors for incorrect fields (height/weight too low or too high, gender/blood type wrong)
test "error on incorrect" do
  actor = Actor.new
  ( 
    #height: 1000,
    #weight: 1000,
    #gender:"alien",
    #blood_type:"C"
  )
  assert actor.errors[:name].none?
  assert actor.errors[:real_name].none?
  assert actor.errors[:birth_date].none?
  assert actor.errors[:origin].none?
  assert actor.errors[:height].none?
  assert actor.errors[:gender].none?
  assert actor.errors[:blood_type].none?
end
# No errors on correct fields (one assertion for each field)
  test "no errors on correct" do
    actor = Actor.new()
    assert actor.valid?
    assert actor.errors[:name].none?
    assert actor.errors[:real_name].none?
    assert actor.errors[:birth_date].none?
    assert actor.errors[:origin].none?
    assert actor.errors[:height].none?
    assert actor.errors[:gender].none?
  end
end
