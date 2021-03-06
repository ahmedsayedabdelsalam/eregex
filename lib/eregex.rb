# frozen_string_literal: true

require_relative "eregex/version"

# Regex Module
module ERegex
  class Error < StandardError; end

  PATTERN_ALPHA = '\pL\pM'
  PATTERN_ALPHANUMERIC = '\pL\pM\pN'
  PATTERN_ALPHADASH = '\pL\pM\pN._-'
  PATTERN_DIGITS = "0-9"
  PATTERN_EMAIL = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i.freeze
  PATTERN_NUMERIC = '-?\d*(\.\d+)?'
  PATTERN_UUID = /[\da-f]{8}-[\da-f]{4}-[\da-f]{4}-[\da-f]{4}-[\da-f]{12}/.freeze

  def self.alpha?(subject, allow_whitespace: false)
    match(subject, self::PATTERN_ALPHA, allow_whitespace: allow_whitespace)
  end

  def self.alphadash?(subject, allow_whitespace: false)
    match(subject, self::PATTERN_ALPHADASH, allow_whitespace: allow_whitespace)
  end

  def self.alphanumeric?(subject, allow_whitespace: false)
    match(subject, self::PATTERN_ALPHANUMERIC, allow_whitespace: allow_whitespace)
  end

  def self.digits?(subject, allow_whitespace: false)
    match(subject, self::PATTERN_DIGITS, allow_whitespace: allow_whitespace)
  end

  def self.email?(subject)
    regex(subject, self::PATTERN_EMAIL)
  end

  def self.numeric?(subject)
    match(subject, self::PATTERN_NUMERIC)
  end

  def self.uuid?(subject)
    regex(subject, self::PATTERN_UUID)
  end

  def self.alpha(subject, replace = "")
    self.replace(subject, self::PATTERN_ALPHA, replace)
  end

  def self.alphadash(subject, replace = "")
    self.replace(subject, self::PATTERN_ALPHADASH, replace)
  end

  def self.alphanumeric(subject, replace = "")
    self.replace(subject, self::PATTERN_ALPHANUMERIC, replace)
  end

  def self.digits(subject, replace = "")
    self.replace(subject, self::PATTERN_DIGITS, replace)
  end

  def self.numeric(subject, replace = "")
    self.replace(subject, self::PATTERN_NUMERIC, replace)
  end

  def self.match(subject, pattern, allow_whitespace: false)
    !!(subject =~ wrap_match_pattern(pattern, allow_whitespace: allow_whitespace))
  end

  def self.regex(subject, pattern)
    !!(subject =~ pattern)
  end

  def self.replace(subject, pattern, replacement = "")
    subject.gsub(wrap_replace_pattern(pattern), replacement)
  end

  class << self
    protected

    def wrap_replace_pattern(pattern)
      /[^#{pattern}]+/u
    end

    def wrap_match_pattern(pattern, allow_whitespace: false)
      /^[#{allow_whitespace ? '\s' : ''}#{pattern}]+$/u
    end
  end
end
