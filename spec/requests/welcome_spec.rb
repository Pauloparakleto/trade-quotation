require 'rails_helper'

RSpec.describe 'Welcome', :type => :request do

  it 'gets welcome home at the root path' do
    get root_path

    expect(response).to render_template(:home)
    expect(response.status).to eq(200)
    expect(response.body).to include('This is the last quotation: ')
  end
end