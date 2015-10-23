class ApplicantsController < ApplicationController
  before_action :set_applicant, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new, :create, :thank_you]

  respond_to :html, :pdf
  layout :resolve_layout

  def index
    @applicants = Applicant.all
    respond_with(@applicants)
  end

  def show
    respond_with(@applicant)
  end

  def new

    if params[:new_app] == "true"
       cookies.delete :new_app
    elsif cookies[:new_app] == "false"
      return redirect_to :thank_you_applicants, flash[:success] => "You have already submitted the aplication."
    else
       cookies.delete :new_app
    end

    @applicant = Applicant.new
    1.times do
      address = @applicant.addresses.build
    end
    3.times do
      education = @applicant.educations.build
    end
    1.times do
      employment = @applicant.employments.build
    end
    2.times do
      reference = @applicant.references.build
    end
    respond_with(@applicant)
  end

  def edit
    respond_to do |format|
      format.html
      format.pdf do
        render pdf:                            'file_name_resume',
               disposition:                    'attachment',                 # default 'inline'
               template:                       'applicants/edit.html.erb',
               layout:                         'app_lay.html',                   # use 'pdf.html' for a pdf.html.erb file
               wkhtmltopdf:                    '/usr/local/bin/wkhtmltopdf', # path to binary
               orientation:                    'Landscape',                  # default Portrait
               page_size:                      'A4',            # default A4
               disable_javascript:             false,
               disable_internal_links:         true,
               disable_external_links:         true,
               print_media_type:               true,
               disable_smart_shrinking:        true,
               use_xserver:                    true,
               no_background:                  true
      end
    end
  end

  def create
    @applicant = Applicant.new(applicant_params)
    if @applicant.save
      redirect_to :thank_you_applicants
    else
      flash[:error] = "Something went wrong. Please try again!!!." 
      redirect_to(:back)
    end

    # respond_with(@applicant)
  end

  def update
    @applicant.update(applicant_params)
    respond_with(@applicant)
  end

  def destroy
    @applicant.destroy
    redirect_to root_path
  end

  def thank_you
    flash[:success] = "You have submitted the aplication."
    cookies.permanent.signed[:new_app] = false
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
      when "edit"
        "app_lay"
      else
        "application"
      end
    end
end
