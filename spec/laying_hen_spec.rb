require 'laying_hen'

describe LayingHen do
	let(:layinghen) {LayingHen.new}

	describe "#initialize" do
		it "creates a LayingHen object" do
			expect(layinghen).to be_an_instance_of LayingHen
		end
	end

	describe "age!" do
		it "Ages the hen one month" do
			expect(layinghen.age!).to eq(1)
			expect(layinghen.egg.length).to eq(0)
		end

		it "Ages the hen one month, and lays 4 eggs if the hen is older than 3 months" do
			4.times{layinghen.age!}
			expect(layinghen.egg.length).to eq(4)
		end
	end

	describe "any_eggs?" do

		it "Returns +false+ if the hen has not laid any eggs" do
			expect(layinghen.any_eggs?).to eq(false)
		end
		it "Returns +true+ if the hen has laid eggs" do
			4.times{layinghen.age!}
			expect(layinghen.any_eggs?).to eq(true)
		end
	end
end

