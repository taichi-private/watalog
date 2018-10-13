class ApplicationController < ActionController::Base
  before_action :set_request_variant

  private
    def set_request_variant
      request.variant = request.device_variant
    end
end
