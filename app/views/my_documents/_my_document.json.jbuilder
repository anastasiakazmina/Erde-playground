json.extract! my_document, :id, :title, :body, :created_at, :updated_at
json.url my_document_url(my_document, format: :json)
