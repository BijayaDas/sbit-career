class ApplicantsController < ApplicationController
  before_action :set_applicant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new, :create]

  respond_to :html
  layout :resolve_layout

  def index
    @applicants = Applicant.all
    respond_with(@applicants)
  end

  def show
    respond_with(@applicant)
  end

  def new
    @applicant = Applicant.new
    respond_with(@applicant)
  end

  def edit
  end

  def create
    @applicant = Applicant.new(applicant_params)
    @applicant.save
    respond_with(@applicant)
  end

  def update
    @applicant.update(applicant_params)
    respond_with(@applicant)
  end

  def destroy
    @applicant.destroy
    redirect_to root_path
  end

  private
    def set_applicant
      @applicant = Applicant.friendly.find(params[:id])
    end

    def applicant_params
      # raise params.inspect
      params[:applicant].permit!
      # params.require(:applicant).permit(:first_name, :middle_name,:last_name, :gender,:dob,:email,:avatar, addresses_attributes: [ :address_type, :city, :state, :pin, :telephone, :mobile])
    end

    def resolve_layout
      case action_name
      when "show"
        "apple"
      else
        "application"
      end
    end
end
