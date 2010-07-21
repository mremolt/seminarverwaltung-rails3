class SeminarsController < InheritedResources::Base

  private
  def collection
    @seminars ||= end_of_association_chain.paginate(
      :page => params[:page], :per_page => 15)
  end
end
