require_relative "../config/environment.rb"
require_relative "../app/models/period.rb"

describe 'Period' do

  describe '.new' do
    it 'initiates with a name' do
      expect(Gallery).to respond_to(:new).with(1).argument
    end
  end

end
