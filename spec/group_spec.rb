require_relative  "../group"


describe "Group" do
  before(:each) do
    @group = group.new("test Group", "./groups/test-group.txt")
    @names = File.readlines("./groups/test-group.txt").map {|name| name.strip}
  end

  it "should be an instance of a group" do
    expect(@group).to be_a Group
  end

  it "should initialize with a name property" do
      expect(@group.name).to eq("test Group")
  end

  it " should have an array of names" do
    expect (@group.names_array).to be_an_instance_of(Array)
  end

  describe ".names_array" do
    it "should contain the same names as the text file" do
      expect(@group.names_array).to include(*@names)
  end

  describe ".randomise_order" do
    it "should be defined" do 
      expect(defined? @group.randomise_order).to eq("method")
    end

    it "should return an Array" do
      expect (@group.randomise_order).to be_an_instance_of(Array)
    end

    it "should return an array that contains all items in @names_array" do
      expect(@group.randomise_order).to include(*@group.names_array)
    end

      describe ".output_random_array" doit "should be defined" do
        expect(defined? @group.output_random_array).to eq("method")
      end

      it "should output a name from the @names_array" do
        expect(@group.output_random_array).to output(/#{regexp.quote(@group.names_array.sample)}/).to_stdout
      end


  end

  describe ".add_name" do

    it "should be defined" do
      expect(defined? @group.add_name).to eq("method)
    end
    it "should increase @names_array by one" do
      length = @group.names_array.length
      expect()
    end



end