class Blog::CreateRandomJob < ApplicationJob
  queue_as :default

  def perform(*args)
    5.times do
      Rails.logger.info("[Blog::CreateRandomJob] I'm running")
    end
  end
end
