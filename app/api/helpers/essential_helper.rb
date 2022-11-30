# frozen_string_literal: true

module Helpers
  module EssentialHelper

    def request
      @request ||= ::Grape::Request.new(env)
    end

    def authenticate!
      headers = Hashie::Mash.new(request.headers)
      auth = V1::Auth::Authenticator.new(request, headers)
      auth.authenticate!
    end

    def current_user
      return unless authenticate!

      @current_user ||= authenticate!.user
    end
  end
end