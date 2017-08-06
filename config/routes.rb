Rails.application.routes.draw do
  get '/contact1' => 'contacts#contact1'
  get '/new_contact_form' => 'contacts#new_contact_form'
  post '/add_contact' => 'contacts#add_contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
