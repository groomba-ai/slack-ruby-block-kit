# frozen_string_literal: true

module Slack
  module BlockKit
    module Composition
      # An object representing a dispatch action configuration.
      #
      # https://api.slack.com/reference/block-kit/composition-objects#dispatch_action_config
      class DispatchActionConfig
        TYPE = 'dispatch_action_config'

        def initialize(trigger_actions_on: nil)
          @trigger_actions_on = trigger_actions_on
        end

        def as_json(*)
          {
            trigger_actions_on: @trigger_actions_on
          }.compact
        end
      end
    end
  end
end
