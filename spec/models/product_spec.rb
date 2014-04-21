require 'spec_helper'

describe User do

  before { @product = Product.new(pname: "shirt" ,IDSKU: 1 ,supplier_id: 1, subcat_id: 1, desc: "shirt", price: 100, color: "red") }

  subject { @product }

  it { should respond_to(:name) }
  it { should respond_to(:email) }end
