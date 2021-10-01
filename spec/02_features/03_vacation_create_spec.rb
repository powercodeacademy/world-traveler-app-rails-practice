describe 'vacation create', :type => :feature do
  it 'can create a vacation' do
    clear_vacations
    traveler = create_traveler
    country = create_country

    visit new_vacation_path
    select 'Sebastian', from: "Traveler"
    select 'Argentina', from: "Country"
    choose 'Favorite'
    click_button('Create Vacation')

    expect(Vacation.last).to have_attributes(
      traveler: traveler,
      country: country,
      favorite: true
    )
  end

  def create_traveler
    Traveler.create(name: "Sebastian", age: 29)
  end

  def create_country
    Country.create(name: "Argentina", description: "Country in South America")
  end

  def clear_vacations
    Vacation.destroy_all
  end
end