module Alpha

  module Entities
    class Application < Grape::Entity
      expose :id
      expose :reimbursement_needed, documentation: { type: "Boolean", desc: "If user needs travel reimbursement" }
      expose :profile_id, documentation: { type: "Integer", desc: "ID of profile" }
      expose :hackathon_id, documentation: { type: "Integer", desc: "ID of hackathon applying to" }
      expose :created_at
      expose :updated_at
    end
  end

  class Applications < Grape::API
    #version 'v1', using: :path
    #format :json

    desc "Returns pong."
    get 'ping' do
      { ping: "pong" }
    end

<<<<<<< HEAD
    desc "Show all applications", { :entity => Alpha::Entities::Application }
      get '/applications', http_codes: [ [200, "Ok", Alpha::Entities::Application] ] do
        applications = Application.all
        present applications, with: Alpha::Entities::Application
      end
=======
    get '/applications' do
      applications = Application.all
      present applications, with: Alpha::Entities::Application
    end
>>>>>>> 11a14cbe1c4cd79d797c695d65bfef9670eca72b

    #post '/applications' do
      #Application.create! with: Alpha::Entities::Application
    #end

    desc "Create a new application", { :entity => Alpha::Entities::Application }
<<<<<<< HEAD
      params do
        requires :reimbursement_needed, type: Boolean, desc: "If user needs travel reimbursement"
        requires :profile_id, type: Integer, desc: "ID of profile"
        requires :hackathon_id, type: Integer, desc: "ID of hackathon applying to"
      end

      post '/applications', http_codes: [ [200, "Ok", Alpha::Entities::Application] ] do
        application = Application.new
        application.reimbursement_needed = params[:reimbursement_needed] if params[:reimbursement_needed]
        application.profile_id = params[:profile_id] if params[:profile_id]
        application.hackathon_id = params[:hackathon_id] if params[:hackathon_id]
        application.save

        status 201
        present application, with: Alpha::Entities::Application
      end
=======
        params do
          requires :reimbursement_needed, type: Boolean, desc: "If user needs travel reimbursement"
          requires :profile_id, type: Integer, desc: "ID of profile"
          requires :hackathon_id, type: Integer, desc: "ID of hackathon applying to"

        end
        post '/applications', http_codes: [
          [200, "Ok", Alpha::Entities::Application]
        ] do
          application = Application.new
          application.reimbursement_needed = params[:reimbursement_needed] if params[:reimbursement_needed]
          application.profile_id = params[:profile_id] if params[:profile_id]
          application.hackathon_id = params[:hackathon_id] if params[:hackathon_id]
          application.save

          status 200
          present application, with: Alpha::Entities::Application
        end

>>>>>>> 11a14cbe1c4cd79d797c695d65bfef9670eca72b
  end
end
