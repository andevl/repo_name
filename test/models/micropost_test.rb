require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@user = users(:michael)
  	@micropost = Micropost.new(content:"Lorem", user_id: @user.id)
  end

  test "should be valid" do
  	assert @micropost.valid?
  end

  test "user_id should be present" do
  	@micropost.user.id = nil
  	assert_not @micropost.valid?
  end

    test "content should be present" do
    @micropost.content = "   "
    assert_not @micropost.valid?
  end

  test "content should be at most 140 characters" do
    @micropost.content = "a" * 141
    assert_not @micropost.valid?
  end

end
