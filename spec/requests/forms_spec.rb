require 'rails_helper'

RSpec.describe "Forms", type: :request do
  describe "#Index" do
    pending "add some examples (or delete) #{__FILE__}"
    # returns forms for a specific user
    # does not return forms for a different user
  end
  
  describe "#Show" do
    pending "add some examples (or delete) #{__FILE__}"
    # returns the specified form
    # only returns the form if it is the user's form
    # returns an error message if form does not exist
  end
  
  describe "#Create" do
    pending "add some examples (or delete) #{__FILE__}"
    # creates a new form
    # returns an error message if there are errors
  end

  describe "#Destroy" do
    pending "add some examples (or delete) #{__FILE__}"
    # destroys the given form
    # only destroy form owned by the user
  end
end
