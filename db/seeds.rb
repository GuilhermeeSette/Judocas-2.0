# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Judoca.destroy_all
Entidade.destroy_all

Judoca.create!([
            {nome: "Carlos Silva",
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
            is_both_roles: false},
            {nome:  "Bruno Romão",
            registro_cbj: "abc",
            telefone1: "11987986772",
            email: "b@email.com",
            cpf: "44223311233",
            rg: "435678990",
            rua: "Rua Asfalto",
            numero_residencia: "1",
            bairro: "Brasil",
            cidade: "Nárnia",
            estado: "Noruega",
            cep: "09387748",
            is_both_roles: false},
            {nome:  "Diana Silva",
            registro_cbj: "abd",
            telefone1: "11987986772",
            email: "d@email.com",
            cpf: "44423301233",
            rg: "435678990",
            rua: "Rua Asfalto",
            numero_residencia: "1",
            bairro: "Brasil",
            cidade: "Nárnia",
            estado: "Noruega",
            cep: "09387748",
            is_both_roles: false,
            carteira_status: "EXPIRADO"},
            {nome:  "Eduardo Oliveira",
            registro_cbj: "abe",
            telefone1: "11987986772",
            email: "e@email.com",
            cpf: "44413311233",
            rg: "435678990",
            rua: "Rua Asfalto",
            numero_residencia: "1",
            bairro: "Brasil",
            cidade: "Nárnia",
            estado: "Noruega",
            cep: "09387748",
            is_both_roles: false},
            {nome:  "Bruno Santos",
            registro_cbj: "abf",
            telefone1: "11987986772",
            email: "br@email.com",
            cpf: "44423391233",
            rg: "435678990",
            rua: "Rua Asfalto",
            numero_residencia: "1",
            bairro: "Brasil",
            cidade: "Nárnia",
            estado: "Noruega",
            cep: "09387748",
            is_both_roles: false,
            carteira_status: "EXPIRADO"}
])
           
Judoca.create!([
            {nome: "Jorge Silva",
            registro_cbj:"abx",
            telefone1:"11987986772",
            email:"c@email.com",
            cpf:"44423311233",
            rg:"435678990",
            rua:"Rua Asfalto",
            numero_residencia:"1",
            bairro:"Brasil",
            cidade:"Nárnia",
            estado:"Noruega",
            cep:"09387748",
            is_both_roles: true},
            {nome: "Mauricio Romão",
            registro_cbj:"abc",
            telefone1:"11987986772",
            email:"b@email.com",
            cpf:"44223311233",
            rg:"435678990",
            rua:"Rua Asfalto",
            numero_residencia:"1",
            bairro:"Brasil",
            cidade:"Nárnia",
            estado:"Noruega",
            cep:"09387748",
            is_both_roles: true},   
            {nome: "Caroline Silva",
            registro_cbj:"abd",
            telefone1:"11987986772",
            email:"d@email.com",
            cpf:"44423301233",
            rg:"435678990",
            rua:"Rua Asfalto",
            numero_residencia:"1",
            bairro:"Brasil",
            cidade:"Nárnia",
            estado:"Noruega",
            cep:"09387748",
            is_both_roles: true},          
            {nome: "Gabriel Oliveira",
            registro_cbj:"abe",
            telefone1:"11987986772",
            email:"e@email.com",
            cpf:"44413311233",
            rg:"435678990",
            rua:"Rua Asfalto",
            numero_residencia:"1",
            bairro:"Brasil",
            cidade:"Nárnia",
            estado:"Noruega",
            cep:"09387748",
            is_both_roles: true},         
            {nome: "Thaynna Santos",
            registro_cbj:"abf",
            telefone1:"11987986772",
            email:"br@email.com",
            cpf:"44423391233",
            rg:"435678990",
            rua:"Rua Asfalto",
            numero_residencia:"1",
            bairro:"Brasil",
            cidade:"Nárnia",
            estado:"Noruega",
            cep:"09387748",
            is_both_roles: true},
            ]) 

Entidade.create!([
            {nome: "Academia de santos",
            telefone1: "11987986772",
            cnpj: "75705091000160",
            rua: "Rua de Santos",
            numero_residencia: "1146378490",
            bairro: "Santos",
            cidade: "Santista",
            estado: "Santana",
            cep: "09495090"},
            {nome: "Academia de Moema",
            telefone1: "11987986772",
            cnpj: "75705091000160",
            rua: "Rua de Santos",
            numero_residencia: "1146378490",
            bairro: "Santos",
            cidade: "Santista",
            estado: "Santana",
            cep: "09495090"},
            {nome: "Judocas de santos",
            telefone1: "11987986772",
            cnpj: "75705091000160",
            rua: "Rua de Santos",
            numero_residencia: "1146378490",
            bairro: "Santos",
            cidade: "Santista",
            estado: "Santana",
            cep: "09495090"},
            {nome: "Judocas de moema",
            telefone1: "11987986772",
            cnpj: "75705091000160",
            rua: "Rua de Santos",
            numero_residencia: "1146378490",
            bairro: "Santos",
            cidade: "Santista",
            estado: "Santana",
            cep: "09495090"},
            {nome: "Judo Academy",
            telefone1: "11987986772",
            cnpj: "75705091000160",
            rua: "Rua de Santos",
            numero_residencia: "1146378490",
            bairro: "Santos",
            cidade: "Santista",
            estado: "Santana",
            cep: "09495090"}
            ])