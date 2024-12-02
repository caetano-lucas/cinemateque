require 'rails_helper'

describe 'usuario registra um novo papel' do
  it 'para um ator existente' do
    user = FactoryBot.create(:user, email: 'joao@email.com')
    ator1 = Actor.create(name: 'actor1', nationality: 'Uruguaia', birth: '2000')

    login_as user
    visit root_path
    click_on 'Atores'
    click_on 'Detalhes actor1'
    click_on 'Adicionar novo papel em um filme'

    expect(page).to have_content 'Ator1'
    expect(page).to have_content 'Brasileiro'
    expect(page).to have_content '1992'
    expect(current_path).to eq actors_path
  end
end