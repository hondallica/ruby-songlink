# frozen_string_literal: true

module Version
  def version
    '0.1.0'
  end

  def api_version(api_version = 'v1-alpha.1')
    api_version
  end

  module_function :version, :api_version
end
