# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_15_202243) do
  create_table "actividades", force: :cascade do |t|
    t.integer "tipo_id"
    t.integer "docente_id"
    t.string "titulo"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actividades_alumnos", force: :cascade do |t|
    t.integer "actividad_id"
    t.integer "alumno_id"
    t.float "calificacion"
    t.text "observaciones"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actividades_tipo", force: :cascade do |t|
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alumnos", force: :cascade do |t|
    t.integer "carrera_id"
    t.integer "user_id"
    t.integer "no_control"
    t.integer "semestre"
    t.string "nombre"
    t.string "apellido_p"
    t.string "apellido_m"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carreras", force: :cascade do |t|
    t.string "siglas"
    t.string "carrera"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "docentes", force: :cascade do |t|
    t.integer "user_id"
    t.string "nombre"
    t.string "apellido_p"
    t.string "apellido_m"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
