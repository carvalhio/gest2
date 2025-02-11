class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table "teachers", force: :cascade do |t|
      t.string "first_name"
      t.string "email"
      t.string "phone"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false

      t.index ["first_name", "email", "phone"], name: "index_teachers_on_first_name_and_email_and_phone", unique: true
    end
  end
end