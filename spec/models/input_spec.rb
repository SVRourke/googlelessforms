require 'rails_helper'

RSpec.describe Input, inputType: :model do
  before(:all) do
    @user = User.create(username: "Sam", email: "S@S.com", password: "PASS")
    @form = @user.forms.create(title: "Survey")
    @goodInput = @form.inputs.create(inputType: "text", label: "good Input", name: "goodInput")
  end

  describe "type" do
    it "has a type" do
      expect(@goodInput.inputType).to eq("text")
    end
    
    it "type is restricted to the approved types" do
      badInput = @form.inputs.create(inputType: "pizza", label: "a", name: "a")
      expect(@goodInput.valid?).to be(true)
      expect(badInput.valid?).to be(false)
    end
    
    it "is invalid without type" do
      badInput = @form.inputs.create(label: "a", name: "a")
      expect(badInput.valid?).to eq(false)
    end

    it "date is a valid input" do
      date = @form.inputs.create(inputType: "date", label: "b", name: "b")
      expect(date.valid?).to be(true)  
    end
    
    it "checkbox is a valid input" do
      chechbox = @form.inputs.create(inputType: "chechbox", label: "c", name: "c")
      expect(chechbox.valid?).to be(true)  
    end
    
    it "email is a valid input" do
      email = @form.inputs.create(inputType: "email", label: "d", name: "d")
      expect(email.valid?).to be(true)  
    end

    it "number is a valid input" do
      number = @form.inputs.create(inputType: "number", label: "e", name: "e")
      expect(number.valid?).to be(true)
    end

    it "text is a valid input" do
      text = @form.inputs.create(inputType: "text", label: "f", name: "f")
      expect(text.valid?).to be(true)      
    end

    it "longtext is a valid input" do
      longtext = @form.inputs.create(inputType: "longtext", label: "g", name: "g")
      expect(longtext.valid?).to be(true)      
    end
    
    it "telephone is a valid input" do
      telephone = @form.inputs.create(inputType: "telephone", label: "h", name: "h")
      expect(telephone.valid?).to be(true)      
    end
    
    it "time is a valid input" do
      time = @form.inputs.create(inputType: "time", label: "i", name: "i")
      expect(time.valid?).to be(true)
    end

    it "url is a valid input" do
      url = @form.inputs.create(inputType: "url", label: "j", name: "j")
      expect(url.valid?).to be(true)      
    end
    
    it "file is a valid input" do
      file = @form.inputs.create(inputType: "file", label: "k", name: "k")
      expect(file.valid?).to be(true)      
    end
   
  end

  describe "label" do
    it "has a label" do
      expect(@goodInput.label).to eq("good input")
    end

    it "label cannot be duplicate in same form" do
      # , label: "a", name: "a"
    end

    it "label is required" do
    end

  end
  # name
    # has a name
    # name is required
  # form
    # belongs to a form
  # TODO FININSH WRITING TESTS
end
