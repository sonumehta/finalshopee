require 'spec_helper'


describe "User pages" do

 
	 subject { page }

describe "index" do
    before do
      sign_in FactoryGirl.create(:user)
      FactoryGirl.create(:user, username: "Bob", email_id: "bob@example.com")
      FactoryGirl.create(:user, username: "Ben", email_id: "ben@example.com")
      visit users_path
    end

    it { should have_title('All users') }
    it { should have_content('All users') }

describe "pagination" do
	
	 before(:all) { 30.times { FactoryGirl.create(:user) } }
	      after(:all)  { User.delete_all }

	      it { should have_selector('div.pagination') }

	    it "should list each user" do
      User.all.each do |user|
	User.paginate(page: 1).each do |user|
        expect(page).to have_selector('li', text: user.username)
      end
    end
  end
end end 

describe "delete links" do

      it { should_not have_link('delete') }

      describe "as an admin user" do
        let(:admin) { FactoryGirl.create(:admin) }
        before do
	  FactoryGirl.create(:user, username: "test", email_id: "test@example.com")
          sign_in admin
          visit users_path
        end

        it { should have_link('delete', href: user_path(User.first)) }
        it "should be able to delete another user" do
          expect do
            click_link('delete', match: :first)
          end.to change(User, :count).by(-1)
        end
        it { should_not have_link('delete', href: user_path(admin)) }
      end
    end
  


  	describe "signup page" do
   	
	    	before { visit signup_path }

	    	let(:submit) { "Create my account" }

	    	describe "with invalid information" do
	    	  it "should not create a user" do
		expect { click_button submit }.not_to change(User, :count)
	      end
	    end

	    describe "with valid information" do
	      before do
		fill_in "Username",         with: "Example User"
		fill_in "Email",        with: "user@example.com"
		fill_in "Password",     with: "foobar"
		fill_in "Confirmation", with: "foobar"
		fill_in "Address", with: "foobar"
		fill_in "Phone", with: "foobar"
	      end


	      it "should create a user" do
		expect { click_button submit }.to change(User, :count).by(1)
	      end
	    end
  end
   

describe "edit" do
    let(:user) { FactoryGirl.create(:user) }
    before do
      sign_in user
      visit edit_user_path(user)
    end

    describe "page" do
      it { should have_content("Update your profile") }
      it { should have_title("Edit user") }
      it { should have_link('change', href: 'http://gravatar.com/emails') }
    end

    describe "with invalid information" do
      let(:new_username)  { "New Name" }
      let(:new_email_id) { "new@example.com" }
      before do
        fill_in "Username",             with: new_username
        fill_in "Email",            with: new_email_id
        fill_in "Password",         with: user.password
        fill_in "Confirm Password", with: user.password
        click_button "Save changes"
      end

      it { should have_title(new_username) }
      it { should have_selector('div.alert.alert-success') }
      it { should have_link('Sign out', href: signout_path) }
      specify { expect(user.reload.username).to  eq new_username }
      specify { expect(user.reload.email_id).to eq new_email_id }
    end
  end




describe "profile page" do
 let(:user) { FactoryGirl.create(:user) }
  before { visit user_path(user) }

  it { should have_content(user.username) }
  it { should have_title(user.username) }
end

end



    
