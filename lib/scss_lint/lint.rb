module SCSSLint
  # Stores information about a single problem that was detected by a [Linter].
  class Lint
    attr_reader :linter, :filename, :location, :description, :severity, :apply_block

    # @param linter [SCSSLint::Linter]
    # @param filename [String]
    # @param location [SCSSLint::Location]
    # @param description [String]
    # @param severity [Symbol]
    def initialize(linter, filename, location, description, severity = :warning, &apply_block)
      @linter      = linter
      @filename    = filename
      @location    = location
      @description = description
      @severity    = severity
      @apply_block = apply_block
    end

    # @return [Boolean]
    def error?
      severity == :error
    end
  end
end
