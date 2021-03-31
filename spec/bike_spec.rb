require 'bike'

RSpec.describe Bike do
  context "長期租約" do
    it "前 30 分鐘 5 元" do
      bike = Bike.new(10)
      expect(bike.cost).to eq(5)
    end
    it "超過 30 分鐘，但於 4 小時內還車，費率為每 30 分鐘 10 元" do
      bike = Bike.new(58)
      expect(bike.cost).to eq(15)
    
      bike = Bike.new(61)
      expect(bike.cost).to eq(25)

      bike = Bike.new(239)
      expect(bike.cost).to eq(75)
    end
    it "超過 4 小時，但於 8 小時內還車，第4~8小時費率為每30分鐘 20 元" do
      bike = Bike.new(241)
      expect(bike.cost).to eq(95)

      bike = Bike.new(270)
      expect(bike.cost).to eq(95)

      bike = Bike.new(271)
      expect(bike.cost).to eq(115)
    end
    it '超過 8 小時，於第 8 小時起將以每 30 分鐘 40 元計價' do
      bike = Bike.new(481)
      expect(bike.cost).to eq(195)
    end
  end
  context "單次租車" do
    it '4 小時內，費率為每 30 分鐘 10 元' do
      bike = Bike.new(239)
      expect(bike.money).to eq(80)
    end
    it '超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每30分鐘20元'do
      bike = Bike.new(270)
      expect(bike.money).to eq(100)

      bike = Bike.new(271)
      expect(bike.money).to eq(120)
    end
  end
end

