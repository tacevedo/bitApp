class Request
  class << self
    def where(resource_path, query = {}, options = {})
      response, status = get_json(resource_path, query)
      status == 200 ? response : errors(response)
    end

    def get(id, exchange_name)
      response, status = get_json(id, exchange_name)
      status == 200 ? response : errors(response)
    end

    def errors(response)
      error = { errors: { status: response["status"], message: response["message"] } }
      response.merge(error)
    end

    def get_json(root_path, query = {}, exchange_name)
      query_string = query.map{|k,v| "#{k}=#{v}"}.join("&")
      path = query.empty?? root_path : "#{root_path}?#{query_string}"
      response = api(exchange_name).get(path)
      [JSON.parse(response.body), response.status]
    end

    def api(exchange_name)
      Connection.api(exchange_name)
    end
  end
end
