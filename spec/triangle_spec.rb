require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  describe '.triangle_type' do
    subject { Triangle.triangle_type(lengths)  }

    describe 'scalene_triangle' do
      context 'length [2, 3, 4]' do
        let(:lengths) { [2, 3, 4] }
        it { expect(subject).to eq('scalene_triangle') }
      end

      context 'length [4, 6, 8]' do
        let(:lengths) { [4, 6, 8] }
        it { expect(subject).to eq('scalene_triangle') }
      end
    end

    context 'isosceles_triangle' do
      context 'length [2, 2, 1]' do
        let(:lengths) { [2, 2, 1] }
        it { expect(subject).to eq('isosceles_triangle') }
      end

      context 'length [1, 2, 2]' do
        let(:lengths) { [1, 2, 2] }
        it { expect(subject).to eq('isosceles_triangle') }
      end

      context 'length [2, 2, 1]' do
        let(:lengths) { [2, 2, 1] }
        it { expect(subject).to eq('isosceles_triangle') }
      end
    end

    context 'equilateral_triangle' do
      context 'length [1, 1, 1]' do
        let(:lengths) { [1, 1, 1] }
        it { expect(subject).to eq('equilateral_triangle') }
      end
    end

    context 'not_triangle' do
      context 'length [1, 2, 3]' do
        let(:lengths) { [1, 2, 3] }
        it { expect(subject).to eq('not_triangle') }
      end
    end
  end
end
