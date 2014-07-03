Rails.application.routes.draw do
  root :to => 'pages#hamldemo'
  resources :practioners, :patients, :appointments
  resources :supplements, :invoice
  resources :prescription_supplements
  resources :prescriptions, :except => :new
  get '/prescriptions/:appointment_id/new' => 'prescriptions#new', :as => 'new_prescription'
  get '/prescriptions/:prescription_id/choose' => 'prescriptions#choose', :as => 'choose_supplements'
  post '/prescriptions/:id/add_supplements' => 'prescriptions#add_supplements'
  #get '/prescriptions/:prscription_id/show_w_supplements' => 'prescriptions#show_w_supplements', :as => 'show_w_supplements'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete 'login' => 'session#destroy'
end

#            Prefix Verb   URI Pattern                                  Controller#Action
#              root GET    /                                            pages#hamldemo
#       practioners GET    /practioners(.:format)                       practioners#index
#                   POST   /practioners(.:format)                       practioners#create
#    new_practioner GET    /practioners/new(.:format)                   practioners#new
#   edit_practioner GET    /practioners/:id/edit(.:format)              practioners#edit
#        practioner GET    /practioners/:id(.:format)                   practioners#show
#                   PATCH  /practioners/:id(.:format)                   practioners#update
#                   PUT    /practioners/:id(.:format)                   practioners#update
#                   DELETE /practioners/:id(.:format)                   practioners#destroy
#          patients GET    /patients(.:format)                          patients#index
#                   POST   /patients(.:format)                          patients#create
#       new_patient GET    /patients/new(.:format)                      patients#new
#      edit_patient GET    /patients/:id/edit(.:format)                 patients#edit
#           patient GET    /patients/:id(.:format)                      patients#show
#                   PATCH  /patients/:id(.:format)                      patients#update
#                   PUT    /patients/:id(.:format)                      patients#update
#                   DELETE /patients/:id(.:format)                      patients#destroy
#      appointments GET    /appointments(.:format)                      appointments#index
#                   POST   /appointments(.:format)                      appointments#create
#   new_appointment GET    /appointments/new(.:format)                  appointments#new
#  edit_appointment GET    /appointments/:id/edit(.:format)             appointments#edit
#       appointment GET    /appointments/:id(.:format)                  appointments#show
#                   PATCH  /appointments/:id(.:format)                  appointments#update
#                   PUT    /appointments/:id(.:format)                  appointments#update
#                   DELETE /appointments/:id(.:format)                  appointments#destroy
#       supplements GET    /supplements(.:format)                       supplements#index
#                   POST   /supplements(.:format)                       supplements#create
#    new_supplement GET    /supplements/new(.:format)                   supplements#new
#   edit_supplement GET    /supplements/:id/edit(.:format)              supplements#edit
#        supplement GET    /supplements/:id(.:format)                   supplements#show
#                   PATCH  /supplements/:id(.:format)                   supplements#update
#                   PUT    /supplements/:id(.:format)                   supplements#update
#                   DELETE /supplements/:id(.:format)                   supplements#destroy
#     prescriptions GET    /prescriptions(.:format)                     prescriptions#index
#                   POST   /prescriptions(.:format)                     prescriptions#create
# edit_prescription GET    /prescriptions/:id/edit(.:format)            prescriptions#edit
#      prescription GET    /prescriptions/:id(.:format)                 prescriptions#show
#                   PATCH  /prescriptions/:id(.:format)                 prescriptions#update
#                   PUT    /prescriptions/:id(.:format)                 prescriptions#update
#                   DELETE /prescriptions/:id(.:format)                 prescriptions#destroy
#  new_prescription GET    /prescriptions/:appointment_id/new(.:format) prescriptions#new
#             login GET    /login(.:format)                             session#new
#                   POST   /login(.:format)                             session#create
#                   DELETE /login(.:format)                             session#destroy