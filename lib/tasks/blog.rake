namespace :blog do
  desc 'Runs: Blog::CreateRandomJob'
  task create_random: [:environment] do
    Blog::CreateRandomJob.perform_now
  end
end
