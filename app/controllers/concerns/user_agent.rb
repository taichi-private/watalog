module UserAgent
  extend ActiveSupport::Concern

  def is_mobile?
    request.user_agent =~ /Mobi(le)/
  end
end