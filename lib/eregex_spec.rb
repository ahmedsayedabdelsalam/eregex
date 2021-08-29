# frozen_string_literal: true

require "eregex"

describe ERegex do
  # TODO: complete the remaining specs

  describe ".uuid?" do
    it "can check valid uuid" do
      expect(ERegex.uuid?("123e4567-e89b-12d3-a456-426614174000")).to be true
      expect(ERegex.uuid?("123e4567-e89b-12d3-a456-4266")).to be false
      expect(ERegex.uuid?("this is not valid uuid")).to be false
    end
  end

  describe ".uuid" do
    it "can remove invalid characters from uuid" do
      expect(ERegex.uuid("123e4567-e89b-12d3-a456-426614174000")).to eq("123e4567-e89b-12d3-a456-426614174000")
    end
  end
end
