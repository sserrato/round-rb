require "bitcoin"
require "money-tree"

# establish the namespace
module BitVault
  module Bitcoin
  end
end

require_relative "encodings"

# Wrappers
require_relative "bitcoin/script"
require_relative "bitcoin/output"
require_relative "bitcoin/input"
require_relative "bitcoin/transaction"

# Augmented functionality
require_relative "bitcoin/multi_wallet"

