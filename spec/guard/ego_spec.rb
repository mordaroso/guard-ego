require 'spec_helper'

describe Guard::Ego do
  subject { Guard::Ego.new }

  context 'run_on_change' do

    it 'should call restart guard' do
      subject.should_receive(:restart_guard).and_return(true)
      subject.reload.should be_true
    end

  end

  context 'restart guard' do
    Guard.dup.should_receive(:start).and_return(true)
    Guard.dup.should_receive(:guards).and_return([])
    subject.send(:restart_guard).should be_true
  end
end
