require 'rails_helper'

RSpec.describe User, type: :model do

  context "Validation" do

    before do
      @user = User.create(
        name: "Frdfdfded",
        email:"anderson.hung@live.com",
        password:"1234",
        password_confirmation: "1234"
      )
    end

    it "Password confirmations are equal" do
      expect(@user.password).to eq(@user.password_confirmation)
    end
    it "Expects lenth to be greater than they were last year" do
      expect(@user.password.length).to be >= 2
    end
   # it { should validate_uniqueness_of(:email).case_insensitive }
    it "Checks if email is unique" do
      @user2 = User.create(
          name: "Fred",
          email:"anderson.hung@live.codm",
          password:"suh",
          password_confirmation: "suh"
        )
      expect(@user2).to be_valid
    end
    it "Is authenticated with creds" do
      @user = User.authenticate_with_credentials("anderson.hung@live.com","1234")
      expect(@user).to be_an_instance_of(User)
    end
    it "Works with whitespaces and is case insensitive" do
      @user = User.authenticate_with_credentials("ande  rsOn.hung@live.com","1234")
      expect(@user).to be_an_instance_of(User)
    end
  end
end
