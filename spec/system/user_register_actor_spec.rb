require 'rails_helper'

describe 'usuario registra um novo ator' do
  it 'com sucesso' do
    user = FactoryBot.create(:user, email: 'joao@email.com')

    login_as user
    visit root_path
    click_on 'Atores'
    click_on 'Cadastrar novo Ator'

    fill_in 'Nome', with: 'Ator1'
    fill_in 'Nacionalidade', with: 'Brasileiro'
    fill_in 'Nascimento', with: 1992
    click_on 'Salvar'

    expect(page).to have_content 'Ator1'
    expect(page).to have_content 'Brasileiro'
    expect(page).to have_content '1992'
    expect(current_path).to eq actors_path
  end

  it 'e ve detalhes do ator' do
    user = FactoryBot.create(:user, email: 'joao@email.com')
    ator1 = Actor.create(name: 'actor1', nationality: 'Uruguaia', birth: '2000')
    _ator2 = Actor.create(name: 'actor2', nationality: 'Brasileira', birth: '1994')

    login_as user
    visit root_path
    click_on 'Atores'
    click_on 'Detalhes actor1'

    expect(current_path).to eq actor_path(ator1.id)
    expect(page).to have_content 'actor1'
    expect(page).to have_content 'Uruguaia'
    expect(page).to have_content '2000'
  end
end