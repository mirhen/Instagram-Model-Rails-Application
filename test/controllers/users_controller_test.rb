require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    # @user = users(:one)
    @user = User.create(name: "Hillary", handle: "hillaryyyy")
  end

  # test "should get index" do
  #   get users_url
  #   assert_response :success
  # end
  #
  # test "should get new" do
  #   get new_user_url
  #   assert_response :success
  # end
  #
  # test "should create user" do
  #   assert_difference('User.count') do
  #     post users_url, params: { user: { handle: @user.handle, name: @user.name } }
  #   end
  #
  #   assert_redirected_to user_url(User.last)
  # end
  #
  # test "should show user" do
  #   get user_url(@user)
  #   assert_response :success
  # end
  #
  # test "should get edit" do
  #   get edit_user_url(@user)
  #   assert_response :success
  # end
  #
  # test "should update user" do
  #   patch user_url(@user), params: { user: { handle: @user.handle, name: @user.name } }
  #   assert_redirected_to user_url(@user)
  # end
  #
  # test "should destroy user" do
  #   assert_difference('User.count', -1) do
  #     delete user_url(@user)
  #   end

  # test "bills can be looked up inder polotician" do
  #     bill = Bill.create(name: "Curfew 11pm")
  #     bill.politician << @politician #instance variable
  #     bill.save
  #
  #     assert_equal 1, @polotician.bills.length
  # end
  #get undefined method bills becuase didnt set it up in user.rb
  # rails g migration CreateBillsPoliticians bills:references poloticians:references
  #rails db:migrate
  #  go to both models invloved :  has_and_belongs_to_many :poloticians
  #thats wrong becuase bill and polotician should be singular
  # so db:rollback
  # does reverse of the last db:migration, so now you can change the names of each table to bill, and polotician then run db:migrate again
  #
  # b = Bill.new
  # hillary.bills
  # bills << 1
  # hillary.bills = b
  # 
  rescue ExceptionName

  end
  test "can look up associated photos" do
       photo = Photo.new(user: @user)
    #    photo_two = Photo.new(user_id: 1)
       photo.user = @user
    #    photo_two.user = @user
       photo.save
    #    photo_two.save

       assert_equal 1, @user.photos.size
  end
  #   assert_redirected_to users_url
  # end
end
