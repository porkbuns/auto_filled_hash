require "auto_filled_hash/version"

module AutoFilledHash
  module MessagedFlash
    [:error, :notice, :warning, :success].each do |key|
      module_eval <<-"end-eval", __FILE__, __LINE__
        def add_#{key}(message)
          self.push_message(:#{key}, message)
        end
      end-eval
    end

    def push_message(key, message)
      (self[:message] ||= []) << [key, message]
    end
  end
end

# open up ActionDispatch and add flash bits
class ActionDispatch::Flash::FlashHash
  include AutoFilledHash::MessagedFlash
end

class ActionDispatch::Flash::FlashNow
  include AutoFilledHash::MessagedFlash
end
