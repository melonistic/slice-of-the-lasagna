json.extract! service_provision, :id, :name, :description, :status, :quota, :comment, :service_provision_id, :created_at, :updated_at
json.url service_provision_url(service_provision, format: :json)
