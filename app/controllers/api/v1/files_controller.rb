class Api::V1::FilesController < Api::V1::ApplicationController
  #skip_before_filter :verify_authenticity_token,
  #                  :if => Proc.new { |c| c.request.format == 'application/json' }

  # Just skip the authentication for now
  #before_filter :authenticate_user!

  respond_to :json

  def index
  	binding.pry
    render :text => '{
      "success":true,
      "info":"ok",
      "data":{
      "tasks":[
        {"title":"Complete the app"},
        {"title":"Complete the tutorial"}
      ]
    }}'
  end
end