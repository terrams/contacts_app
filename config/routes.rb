Rails.application.routes.draw do
  get '/first' => 'contacts#show_first_name'
  get '/all' => 'contacts#all_contacts'

end

