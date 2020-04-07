# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_29_005535) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.string "registro_cbj"
    t.string "telefone1"
    t.string "telefone2"
    t.string "email"
    t.string "cpf"
    t.text "observacoes"
    t.string "rg"
    t.string "rua"
    t.string "numero_residencia"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "cep"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "entidades", force: :cascade do |t|
    t.string "nome"
    t.string "telefone1"
    t.string "telefone2"
    t.string "cnpj"
    t.string "rua"
    t.string "numero_residencia"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "cep"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "faixas", force: :cascade do |t|
    t.string "cor"
    t.date "data_entrega"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "nome"
    t.string "registro_cbj"
    t.string "telefone1"
    t.string "telefone2"
    t.string "email"
    t.string "cpf"
    t.text "observacoes"
    t.string "rg"
    t.string "rua"
    t.string "numero_residencia"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "cep"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
end
