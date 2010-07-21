class SeminartermineController < InheritedResources::Base
  optional_belongs_to :seminar
  respond_to :json, :only => [:index, :show]
  respond_to :js, :only => :index

  private
  def collection
    @seminartermine ||= end_of_association_chain.paginate(
      :page => params[:page], :per_page => 15)
  end
end
