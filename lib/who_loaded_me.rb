module WhoLoadedMe
  VERSION = "0.1.1}"

  module_function
  def track!(track_file = nil)
    track_file ||= '/tmp/who_loaded_me.txt'
    File.open(track_file, 'w') do |f|
      f.write("[%s]: App: [%s]: PWD: [%s]]" % [Time.now, $0, ENV['PWD']])
    end
  end
end
