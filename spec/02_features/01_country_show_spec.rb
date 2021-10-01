describe 'country show', :type => :feature do
  it 'contains a link to the show page' do
    country = create_country

    visit countries_path

    expect(page).to have_link(href: country_path(country))
  end

  it 'uses the countries name to get to the show page' do
    country = create_country

    visit countries_path
    click_on country.name

    expect(current_path).to eq ("/countries/#{country.id}")
  end

  it "displays the countries name and description" do
    country = create_country

    visit country_path(country)

    expect(page).to have_countent "Argentina"
    expect(page).to have_countent "Country in South America"
  end

  def create_country
    Country.create(name: "Argentina", description: "Country in South America")
  end
end