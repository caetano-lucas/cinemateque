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
    fill 'filme', with: ''
    click_on 'Salvar'

    expect(current_path).to eq actor_path(ator1.id)
  end
end