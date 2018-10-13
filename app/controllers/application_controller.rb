class ApplicationController < ActionController::Base
  include UserAgent

  protect_from_forgery with: :exception

  before_action :detect_device_variant
  private
  def detect_device_variant
    request.variant = :sp if is_mobile?
  end
end
