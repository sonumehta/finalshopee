class WidgetController < ApplicationController
layout nil
  session :off

  before_filter :validate_api_key, :only => [:related_products]

  def related_products
    # Find bookmarks assigned to owner of the API key
    @bookmarks = Product.find_by_cat1("Men", :order => 'created_at desc', :limit => 10)
  end
def show
    # Find bookmarks assigned to owner of the API key
    @bookmarks = Product.find_by_cat1("Men", :order => 'created_at desc', :limit => 10)
  end

protected
  #def validate_api_key
    # Assuming we defined API_KEY_REGEX elsewhere
   # return render(:text => 'Invalid API key.') unless params[:api_key] =~ API_KEY_REGEX

    # You may want to validate the key against your database and/or log the request
    #return render(:text => 'Invalid API key.') if not @key = Key.find_by_hash(params[:api_key])
  #end
end
