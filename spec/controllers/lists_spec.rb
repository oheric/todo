require "rails_helper" 
require "shoulda/matchers"

describe ListsController do 

  it "should get page for lists" do 

  get :index

  expect(response).to have_http_status(:success)

  expect(response).to render_template(:index)
end

  it "should get an object from db" do 
    get :index
    assigns(:lists).should_not be_nil
  end

  it "should create a list" do 

    # here we are testing object creation in a controller. this is powerful stuff
    # we use the HTTP verb POST to call the create method
    # we pass a parameter named 'list', and use FactoryGirl to return a has of the attributes of an object
    # this will pass 'name' to create, which is the pararmeter it will expect
    post :create, list: FactoryGirl.attributes_for(:list)

    # here we test that the controller redirects to the correct path
    # in this case we want to go back to where we list out all the lists
    expect(response).to redirect_to(lists_path)
  end
end