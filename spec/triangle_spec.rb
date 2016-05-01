require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  describe '.triangle_type' do
    subject { Triangle.triangle_type(lengths)  }

    context 'when length is [2, 3, 4]' do
      let(:lengths) { [2, 3, 4] }
      it { is_expected.to eq('scalene_triangle') }
    end

    context 'when length is [4, 6, 8]' do
      let(:lengths) { [4, 6, 8] }
      it { is_expected.to eq('scalene_triangle') }
    end

    context 'length [2, 2, 1]' do
      let(:lengths) { [2, 2, 1] }
      it { is_expected.to eq('isosceles_triangle') }
    end

    context 'length [1, 2, 2]' do
      let(:lengths) { [1, 2, 2] }
      it { is_expected.to eq('isosceles_triangle') }
    end

    context 'length [2, 2, 1]' do
      let(:lengths) { [2, 2, 1] }
      it { is_expected.to eq('isosceles_triangle') }
    end

    context 'length [4, 4, 2]' do
      let(:lengths) { [4, 4, 2] }
      it { is_expected.to eq('isosceles_triangle') }
    end

    context 'length [1, 1, 1]' do
      let(:lengths) { [1, 1, 1] }
      it { is_expected.to eq('equilateral_triangle') }
    end

    context 'length [1, 2, 3]' do
      let(:lengths) { [1, 2, 3] }
      it { is_expected.to eq('not_triangle') }
    end

    context 'length [2, 4, 6]' do
      let(:lengths) { [2, 4, 6] }
      it { is_expected.to eq('not_triangle') }
    end

    context 'length [1, 1, 2]' do
      let(:lengths) { [1, 1, 2] }
      it { is_expected.to eq('not_triangle') }
    end
  end
end
