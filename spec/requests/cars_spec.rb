describe "cars list API" do
  it 'retrieves top 25 car' do
    create :car, :suv
    create :car, :hatchback_2007
    get "/cars"

    # test for the 200 status-code
    expect(response).to be_successful
    expect(response.header['Content-Type']).to include 'application/json'
  end

  it 'retrieves top 25 car manufacture in 2007' do
    create :car, :suv
    create :car, :hatchback_2007
    get "/cars?year=2007"

    # test for the 200 status-code
    expect(response).to be_successful
    expect(response.header['Content-Type']).to include 'application/json'
  end

  it 'retrieves top 25 car category in suv' do
    create :car, :suv
    create :car, :hatchback_2007
    get "/cars?category=suv"

    # test for the 200 status-code
    expect(response).to be_successful
    expect(response.header['Content-Type']).to include 'application/json'
  end

  it 'retrieves top 25 car category in hatchback and year is 2007' do
    create :car, :suv
    create :car, :hatchback_2007
    get "/cars?category=hatchback&year=2007"

    # test for the 200 status-code
    expect(response).to be_successful
    expect(response.header['Content-Type']).to include 'application/json'
  end
end