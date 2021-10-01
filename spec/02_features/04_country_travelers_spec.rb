describe 'country show with travelers', :type => :feature do
  it "displays all travelers a country has " do
    sebastian = create_traveler(name: "Sebastian", age: 29)
    gillian = create_traveler(name: "Gillian", age: 25)
    country = create_country
    create_vacation(country: country, traveler: sebastian, favorite: true)
    create_vacation(country: country, traveler: gillian, favorite: false)

    visit country_path(country)

    expect(page).to have_countent "Sebastian"
    expect(page).to have_countent "Gillian"
  end

  def create_traveler(name:, age:)
    Traveler.create(name: name, age: age)
  end

  def create_country
    Country.create(name: "Argentina", description: "Country in South America")
  end

  def create_vacation(country:, traveler:, favorite:)
    Vacation.create(country: country, traveler: traveler, favorite: favorite)
  end
end