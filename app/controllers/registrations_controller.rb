class RegistrationsController < ApplicationController
  before_action :authorize, only: [:edit, :update, :destroy]
  before_action :sharing_required, :only => :shared

   # GET /registrations
   # GET /registrations.json
   def index
     @registrations = Tournament.find(params[:tournament_id]).registrations
 
     respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @registrations }
     end
   end

   # GET /registrations/shared
  def shared
    @registrations = Tournament.find(params[:tournament_id]).registrations

    respond_to do |format|
      format.html { render :template => "registrations/index.html.erb" }
      format.json { render json: @registrations }
    end
  end
 
   # GET /registrations/1
   # GET /registrations/1.json
   def show
     @registration = Registration.find(params[:id])
 
     respond_to do |format|
       format.html # show.html.erb
       format.json { render json: @registration }
     end
   end
 
   # GET /registrations/new
   # GET /registrations/new.json
   def new
     tournament = Tournament.find(params[:tournament_id])
     @registration = Registration.new(tournament:tournament)
     tournament.draws.each do |draw|
        @registration.draw_registrations.build(draw_id: draw.id)
     end

     respond_to do |format|
       format.html # new.html.erb
       format.json { render json: @registration }
     end
   end
 
   # POST /registrations
   # POST /registrations.json
   def create
     @registration = Registration.new(registration_params)
     logger.info(registration_params)
     @registration.tournament = Tournament.find(params[:tournament_id])

     if @registration.valid?
         @registration.save
         RegistrationMailer.confirmation_email(@registration).deliver
         flash[:notice] = 'Danke für deine Anmeldung. Du wirst in Kürze eine Bestätigungsmail erhalten.'
         redirect_to tournament_registration_path(@registration.tournament, @registration)
     else
      render :new
     end
   end
 
   def confirmation
   end
 
   # DELETE /registrations/1
   # DELETE /registrations/1.json
   def destroy
     @registration = Registration.find(params[:id])
     @registration.destroy
 
     respond_to do |format|
       format.html { redirect_to tournament_registrations_url }
       format.json { head :no_content }
     end
   end

   def sharing_required
      # pull the key out of the URL and verify that the user has one to match
      unless Sharing.where(tournament_id: params[:tournament_id], key: params[:key]).exists
      #unless Sharing.find(:first, :conditions => ['tournament_id = ? AND key = ?', params[:tournament_id], params[:key] ])
        flash[:error] = 'You do not have permission to view this page'
        redirect_to '/'
    end
  end

   private
    # Never trust parameters from the scary internet, only allow the white list through.
      def registration_params
        params.require(:registration).permit(:tournament_id, :name, :first_name, :email, :classing, :classing_value, :comment, :phone, 
          draw_registrations_attributes: [:id, :partner, :draw_id, :is_registered])
      end
  end
