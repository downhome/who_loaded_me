# frozen_string_literal: true
#
module WhoLoadedMe
  module_function
  # Keeps track of the apps who loaded the specific gem with timestamp, and pwd
  # #params
  #   gem_name: name of gem that wants to be tracked
  #   track_file: name of file where tracks are kept
  #
  def track!(gem_name, track_file: nil)
    track_file ||= '/tmp/who_loaded_me.txt'
    File.open(track_file, 'a') do |f|
      f.puts("[%s]: [%s], App: [%s]: PWD: [%s]]" % [Time.now, gem_name, $0, ENV['PWD']])
    end
  end

  track! self.name
end
