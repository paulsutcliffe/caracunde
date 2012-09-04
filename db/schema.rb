# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120904012307) do

  create_table "albums", :force => true do |t|
    t.string   "nome"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "albums", ["slug"], :name => "index_albums_on_slug", :unique => true

  create_table "contatos", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "telefone"
    t.text     "mensagem"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos", :force => true do |t|
    t.integer  "album_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
  end

  create_table "informacao_translations", :force => true do |t|
    t.integer  "informacao_id"
    t.string   "locale"
    t.text     "seo_text"
    t.string   "video"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "informacao_translations", ["informacao_id"], :name => "index_informacao_translations_on_informacao_id"
  add_index "informacao_translations", ["locale"], :name => "index_informacao_translations_on_locale"

  create_table "informacoes", :force => true do |t|
    t.text     "seo_text"
    t.string   "telefone"
    t.text     "descricao"
    t.string   "frases_chave"
    t.string   "video"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "integrante_translations", :force => true do |t|
    t.integer  "integrante_id"
    t.string   "locale"
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "integrante_translations", ["integrante_id"], :name => "index_integrante_translations_on_integrante_id"
  add_index "integrante_translations", ["locale"], :name => "index_integrante_translations_on_locale"

  create_table "integrantes", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "pais"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "retrato_file_name"
    t.string   "retrato_content_type"
    t.integer  "retrato_file_size"
    t.datetime "retrato_updated_at"
  end

  add_index "integrantes", ["slug"], :name => "index_integrantes_on_slug", :unique => true

  create_table "musicas", :force => true do |t|
    t.text     "soundcloud"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patrocinadores", :force => true do |t|
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "post_translations", :force => true do |t|
    t.integer  "post_id"
    t.string   "locale"
    t.string   "titulo"
    t.text     "conteudo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_translations", ["locale"], :name => "index_post_translations_on_locale"
  add_index "post_translations", ["post_id"], :name => "index_post_translations_on_post_id"

  create_table "posts", :force => true do |t|
    t.string   "titulo"
    t.text     "conteudo"
    t.date     "data"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  add_index "posts", ["slug"], :name => "index_posts_on_slug", :unique => true

  create_table "slides", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slide_file_name"
    t.string   "slide_content_type"
    t.integer  "slide_file_size"
    t.datetime "slide_updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

  create_table "videos", :force => true do |t|
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
