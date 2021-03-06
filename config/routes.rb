Rails.application.routes.draw do
  resources :cambio_comision_registros do
    member do
      patch :marcar
      patch :toggle_validar_consejero
      patch :toggle_validar_coordinador
    end
  end
  resources :comision_registros do
    member do
      patch :marcar
      patch :toggle_validar_consejero
      patch :toggle_validar_coordinador
    end
  end
  resources :cambio_comite_registros do
    member do
      patch :marcar
      patch :toggle_validar_consejero
      patch :toggle_validar_coordinador
    end
  end
  resources :cambio_director_tesis_registros do
    member do
      patch :marcar
      patch :toggle_validar_consejero
      patch :toggle_validar_coordinador
    end
  end
  resources :director_tesis_registros do
    member do
      patch :marcar
      patch :toggle_validar_consejero
      patch :toggle_validar_coordinador
    end
  end
  resources :tema_tesis_registros do
    member do
      patch :marcar
      patch :toggle_validar_consejero
      patch :toggle_validar_coordinador
    end
  end
  class OnlyAjaxRequest
     def matches?(request)
       request.xhr?
     end
  end
  resources :revocacion_registros
  get 'filtrar_consejeros_por_programa' => 'sepi_programas#filtrar_consejeros_por_programa'
  resources :mecanica_asignaturas
  resources :electronica_asignaturas
  resources :telecom_asignaturas
  resources :sistemas_asignaturas
  resources :sistemas_consejeros
  resources :telecom_consejeros
  resources :electronica_consejeros
  resources :mecanica_consejeros
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
  resources :comite_registros do
    member do
      patch :marcar
      patch :toggle_validar_consejero
      patch :toggle_validar_coordinador
    end
  end
  resources :clave_semestres
  resources :cambiar_temas do
    member do
      patch :marcar
      patch :toggle_validar_consejero
      patch :toggle_validar_coordinador
    end
  end
  resources :cambiar_consejeros
  resources :cambiar_asignaturas
  resources :baja_programas
  resources :baja_asignaturas
  resources :agregar_asignaturas
  resources :alumnos
  resources :coordinadores
  resources :consejero_casos
  resources :ce_usuarios
  resources :electrica_casos
  resources :electronica_casos
  resources :mecanica_casos
  resources :sistemas_casos
  resources :telecom_casos
  resources :buscar_minutas do
    collection do
      get :busqueda
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root to: "alumnos#index"
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  #get "*path" => redirect("/")
end
