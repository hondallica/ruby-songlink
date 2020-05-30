# frozen_string_literal: true

require 'songlink/version'
require 'songlink/request'

class Songlink
  include Version
  include Request
  attr_accessor :api_key, :url, :version, :api_version

  def initialize(api_key = ENV['SONGLINK_API_KEY'])
    @version = Version.version
    @api_version = Version.api_version
    @api_key = api_key
    @url = Request.base_url
  end

  def request(params = {})
    http.get("/#{api_version}/links", _params(params))
  end

  def _params(params)
    params['key'] = @api_key
    params['format'] = 'json'
    params
  end
  private :_params
end
