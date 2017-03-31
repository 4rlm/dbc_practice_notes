require_relative "my_solution"

describe VirusPredictor do
  let(:cdc) {VirusPredictor.new("Alaska", 1.1111, 731449)}

  it "calls predicted_deaths and speed_of_spread and prints" do
    expect{cdc.virus_effects}.to output("Alaska will lose 36572 people in this outbreak and will spread across the state in 2.5 months.\n\n").to_stdout
  end

end
