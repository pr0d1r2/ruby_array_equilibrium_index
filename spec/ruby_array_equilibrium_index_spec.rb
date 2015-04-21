require 'ruby_array_equilibrium_index'

describe EquilibriumIndexArray do
  context 'when have array with quilibrium index' do
    let(:array) { [1, 3, 2, 3, 1] }
    let(:instance) { described_class.new(array) }

    describe '.first_equilibrium_index' do
      subject { described_class.first_equilibrium_index(array) }

      it { is_expected.to eq 2 }
    end

    describe '#left_sum' do
      subject { instance.left_sum(index) }

      context 'when index is 0' do
        let(:index) { 0 }

        it { is_expected.to eq 0 }
      end

      context 'when index is 1' do
        let(:index) { 1 }

        it { is_expected.to eq 1 }
      end

      context 'when index is 2' do
        let(:index) { 2 }

        it { is_expected.to eq 4 }
      end

      context 'when index is 3' do
        let(:index) { 3 }

        it { is_expected.to eq 6 }
      end

      context 'when index is 4' do
        let(:index) { 4 }

        it { is_expected.to eq 9 }
      end

      context 'when index is 5' do
        let(:index) { 5 }

        it { is_expected.to eq 10 }
      end
    end

    describe '#right_sum' do
      subject { instance.right_sum(index) }

      context 'when index is 0' do
        let(:index) { 0 }

        it { is_expected.to eq 9 }
      end

      context 'when index is 1' do
        let(:index) { 1 }

        it { is_expected.to eq 6 }
      end

      context 'when index is 2' do
        let(:index) { 2 }

        it { is_expected.to eq 4 }
      end

      context 'when index is 3' do
        let(:index) { 3 }

        it { is_expected.to eq 1 }
      end

      context 'when index is 4' do
        let(:index) { 4 }

        it { is_expected.to eq 0 }
      end

      context 'when index is 5' do
        let(:index) { 5 }

        it { is_expected.to eq 0 }
      end
    end
  end
  context 'when have array without equilibrium index' do
    let(:array) { [1, 2, 2, 3, 1] }

    describe '.first_equilibrium_index' do
      subject { described_class.first_equilibrium_index(array) }

      it { is_expected.to eq(-1) }
    end
  end
end
