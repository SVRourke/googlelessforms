require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  before(:all) do
    @goodUser = User.create(username: "sam", email: "s@s.com", password: "password1")
  end

  describe "Username" do
    it "has a username" do
     expect(@goodUser.username).to eq("sam") 
     expect(@goodUser.valid?).to eq(true) 
    end
    it "is invalid without a username" do
      noname = User.create(email: "a@b.com", password: "password")
      expect(noname.valid?).to eq(false)
    end
    it "is invalid with duplicate name"do
      duplicatename = User.create(username: "sam", email: "s@sam.com", password: "password1")
      expect(duplicatename.valid?).to eq(false)
    end
  end
  describe "Email" do
    it "has email" do
      expect(@goodUser.email).to eq("s@s.com")
    end
    it "invalid without email" do
      noemail = User.create(username: "Sam", password: "Password")
      expect(noemail.valid?).to eq(false)
    end
    it "invalid with duplicate email" do
      duplicateemail = User.create(username: "Sam", email:"s@s.com", password: "Password")
      expect(duplicateemail.valid?).to eq(false)
    end

  end
  describe "password" do
    it "has a password" do
      expect(!!@goodUser.authenticate("password1")).to be(true)
    end

    it "invalid without password" do
      nopassword = User.create(username: "urameshi", email: "yasuke@urameshi.com")
      expect(nopassword.valid?).to eq(false)
    end
  end
  # forms
end
