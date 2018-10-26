require_relative "../config/environment.rb"
require_relative "../app/models/artist.rb"

#setup- create any objects you need to create
#exercise - call the method you want to exercise to get its return value
#verify - verify the results with an expectation
describe Artist do
  describe .new do
    it "initiates with a name, culture and lifespan" do
      expect(Artist).to respond_to(:new).with(3).argument
    end
  end
end
