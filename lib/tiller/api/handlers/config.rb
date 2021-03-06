require 'tiller/json'
require 'tiller/api/handlers/404'

def handle_config(api_version, tiller_api_hash)
  case api_version
    when 'v1'
      {
          :content => dump_json(tiller_api_hash['config']),
          :status => '200 OK'
      }
    else
      handle_404
  end
end
