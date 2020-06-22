require "application_system_test_case"

class JudocasTest < ApplicationSystemTestCase
  test "create Judoca" do
    @judoca_count = Judoca.count
    Judoca.create(nome: "Carlos Silva",
    registro_cbj: "abx",
    telefone1: "11987986772",
    email: "c@email.com",
    cpf: "44423311233",
    rg: "435678990",
    rua: "Rua Asfalto",
    numero_residencia: "1",
    bairro: "Brasil",
    cidade: "Nárnia",
    estado: "Noruega",
    cep: "09387748",
    is_both_roles: false)

    assert_equal(@judoca_count+1, Judoca.count)
  end
end
