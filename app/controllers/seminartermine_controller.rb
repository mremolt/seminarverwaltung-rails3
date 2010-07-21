class SeminartermineController < InheritedResources::Base
  optional_belongs_to :seminar
  respond_to :json, :only => [:index, :show]

  private
  def collection
    @seminartermine ||= end_of_association_chain.paginate(
      :page => params[:page], :per_page => 15)
  end
end
