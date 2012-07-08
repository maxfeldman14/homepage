Max::Application.routes.draw do
  match "/twilio/sms" => 'twilio#index'
  get "home/index", :as => 'index'
  get "home/misc", :as => 'misc' 
  get "home/projects", :as => 'projects' 
  get "home/teaching", :as => 'teaching' 
  
  root :to => 'home#index'

end
