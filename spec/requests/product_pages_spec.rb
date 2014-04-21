require 'spec_helper'

describe "User pages" do

  subject { page }



  describe "addproduct page" do
    before { visit new_product_path }

    it { should have_content('Add New Product') }
    it { should have_title(full_title('Add New Product')) }
  end
end
