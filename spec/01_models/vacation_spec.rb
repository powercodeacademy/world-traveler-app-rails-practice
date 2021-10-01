describe Vacation do
  context 'Vacation validations' do
    it "vacation is valid" do
      traveler = create_traveler
      country = create_country
      expect(Vacation.create(traveler: traveler, country: country, favorite: true)).to be_valid
    end

    it "invalid if traveler is missing" do
      country = create_country
      expect(Vacation.create(country: country, favorite: true)).to_not be_valid
    end

    it "invalid if country is missing" do
      traveler = create_traveler
      expect(Vacation.create(traveler: traveler, favorite: true)).to_not be_valid
    end
  end

  def create_traveler
    Traveler.create(name: "Sebastian", age: 29)
  end

  def create_country
    Country.create(name: "Argentina", description: "Country in South America")
  end
end