require 'bike'

describe Bike do
  it { is_expected.to respond_to(:is_working) }

    it 'Can be reported broken' do
      subject.report_broken
      expect(subject.is_working).to eq false
    end
end
