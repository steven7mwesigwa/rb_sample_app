require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path

    # This is equivalent to recording the
    # user count, posting the data, and verifying that the count is the same.
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: "",
                                         email: "user@invalid",
                                         password:
                                           "foo",
                                         password_confirmation:
                                           "bar" } }
    end
    assert_response :unprocessable_entity
    assert_template 'users/new'
  end
end
