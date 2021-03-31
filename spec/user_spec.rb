require 'user'

RSpec.describe User do
  it "會員" do
    user = User.new
    user.set_member
    expect(user.is_member?).to be true
  end
  it "非會員" do
    user = User.new
    expect(user.is_member?).to be false 
  end
end
