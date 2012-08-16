Caracunde::Application.routes.draw do

  scope '(:locale)', :locale => /#{I18n.available_locales.join("|")}/ do

    resources :slides, :videos, :patrocinadores, :musicas, :integrantes, :posts, :contatos, :fotos

    resources :albums do
      resources :fotos
    end

    devise_for :usuarios, :path => "usuarios", :path_names => { :sign_in => 'ingressar', :sign_out => 'sair', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }


    root :to => "home#index"

  end

end
