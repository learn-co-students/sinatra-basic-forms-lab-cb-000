describe App do

  describe 'GET /' do

    it 'sends a 200 status code' do
      get '/'
      expect(last_response.status).to eq(200)
    end

    it 'renders welcome' do
      visit '/'
      expect(page).to have_link("Click Here To List A Puppy")
    end
  end

  describe 'GET /create_puppy' do
    it 'sends a 200 status code' do
      get '/create_puppy'
      expect(last_response.status).to eq(200)
    end

    it 'renders the form' do
      visit '/create_puppy'
      expect(page).to have_selector("form")
      expect(page).to have_field(:name)
      expect(page).to have_field(:breed)
      expect(page).to have_field(:age)
    end
  end

  describe 'POST /' do
    it "displays the puppy" do
      visit '/create_puppy'

      fill_in(:name, :with => "Butch")
      fill_in(:breed, :with => "Mastiff")
      fill_in(:age, :with => "6 months")
      click_button "Submit"
      expect(page).to have_text("NAME: Butch")
      expect(page).to have_text("BREED: Mastiff")
      expect(page).to have_text("AGE: 6 months")
    end
  end


end
