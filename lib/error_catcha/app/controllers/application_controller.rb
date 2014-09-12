# require 'action_controller/status_codes' unless defined? ::ActionController::StatusCodes

class ApplicationController < ActionController::Base
  def not_found
    render_error(:not_found)
  end

  # TODO: :not_found == 404, but what are the other available symbols?
  # http://apidock.com/rails/ActionController/Base/render#254-List-of-status-codes-and-their-symbols
  def render_error(status)
    respond_to do |format|
      # format.html { render file: "errors/#{ActionController::StatusCodes.send(status)}", status: status }

      # FIXME: I tried to access gem's views/errors/errors and didn't work
      format.html { render file: "#{Rails.root}/public/404", status: status }
      format.xml  { head status }
      format.any  { head status }
    end
  end
end

