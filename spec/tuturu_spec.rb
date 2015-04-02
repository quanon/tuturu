require 'spec_helper'

describe Tuturu do
  it 'has a version number' do
    expect(Tuturu::VERSION).not_to be_nil
  end

  [BasicObject, Object, String, Hash, Array].each do |klass|
    describe '#tuturu' do
      subject { klass.new.tuturu }
      it "returns true for a #{klass} instance" do
        is_expected.to be_truthy
      end
    end

    describe '#to_true' do
      subject { klass.new.to_true }
      it "returns true for a #{klass} instance" do
        is_expected.to be_truthy
      end
    end

    describe '#Tuturu' do
      subject { klass.new.Tuturu(klass.new) }

      it "can't be called for a #{klass} instance" do
        expect { subject }.to raise_error(NoMethodError)
      end
    end
  end

  [true, false, nil].each do |object|
    object_name = object.nil? ? 'nil' : object.to_s

    describe '#tuturu' do
      subject { object.tuturu }
      it "returns true for #{object_name}" do
        is_expected.to be_truthy
      end
    end

    describe '#to_true' do
      subject { object.to_true }
      it "returns true for #{object_name}" do
        is_expected.to be_truthy
      end
    end

    describe '#Tuturu' do
      subject { object.Tuturu(object) }

      it "can't be called for #{object_name}" do
        expect { subject }.to raise_error(NoMethodError)
      end
    end
  end
end

describe Kernel do
  [BasicObject, Object, String, Hash, Array].each do |klass|
    describe '.#Tuturu' do
      subject { Tuturu(klass.new) }

      it "returns true for a #{klass} instance" do
        is_expected.to be_truthy
      end
    end
  end

  [true, false, nil].each do |object|
    object_name = object.nil? ? 'nil' : object.to_s

    describe '.#Tuturu' do
      subject { Tuturu(object) }

      it "returns true for #{object_name}" do
        is_expected.to be_truthy
      end
    end
  end
end
