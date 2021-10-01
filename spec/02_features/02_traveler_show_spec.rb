describe 'traveler show', :type => :feature do
  it "displays the travelers name and age" do
    traveler = create_traveler

    visit traveler_path(traveler)

    expect(page).to have_countent "Sebastian"
    expect(page).to have_countent "29"
  end

  def create_traveler
    Traveler.create(name: "Sebastian", age: 29)
  end
end