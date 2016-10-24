Rails.application.routes.draw do
  resources :areas
  resources :electrica_consejeros
  resources :electrica_asignaturas
  resources :estados
  devise_for :users, :controllers => { registrations: 'registrations' }
  scope "/admin" do
    resources :users
  end
  resources :coordinador_nombres
  resources :consejeros
  resources :tipos_usuarios
  resources :tipos_bajas
  resources :tesis_registros
  resources :sepi_programas
  resources :receso_semestres
  resources :examen_tipos
  resources :examen_graduados
  resources :cursar_asignaturas
  resources :consejero_electricas
  resources :comite_registros
  resources :clave_semestres
  resources :cambiar_temas
  resources :cambiar_consejeros
  resources :cambiar_asignaturas
  resources :baja_programas
  resources :baja_asignaturas
  resources :asignatura_electricas
  resources :agregar_asignaturas
  resources :alumnos
  resources :coordinadores
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "alumnos#index"
end
