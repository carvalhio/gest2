class CreateSchoolClasses < ActiveRecord::Migration[7.0]
  def change
    create_table "school_classes", force: :cascade do |t|
      t.string "grade"
      t.string "level"
      t.integer "quantity"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "order"
      t.string "interger"
      t.string "identifier", limit: 10
      t.string "shift"
      t.integer "qty_adaptado"
      t.integer "adpt"

      t.index ["grade", "identifier"], name: "index_school_classes_on_grade_and_identifier", unique: true
    end
  end
end