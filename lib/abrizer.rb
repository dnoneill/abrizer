require 'yajl'
require 'multi_json'
MultiJson.use :yajl
MultiJson.dump_options = {pretty: true}
require 'jbuilder'
require 'video_sprites'
require 'ostruct'
require "abrizer/version"
require 'abrizer/filepath_helpers'
require 'abrizer/read_adaptations'
require 'abrizer/debug_settings'
require 'abrizer/identifier_helpers'
require 'abrizer/information_helpers'
require 'abrizer/package_dash_shaka'
require 'abrizer/package_hls_shaka'
require 'abrizer/package_dash_bento'
require 'abrizer/package_hls_bento'
require 'abrizer/adaptation'
require 'abrizer/adaptation_finder'
require 'abrizer/adaptations_file'
require 'abrizer/ffmpeg_processor'
require 'abrizer/ffprobe_informer'
require 'abrizer/ffprobe_file'
require 'abrizer/processor'
require 'abrizer/cleaner'
require 'abrizer/progressive_mp4'
require 'abrizer/progressive_vp9'
require 'abrizer/progressive_mp3'
require 'abrizer/sprites'
require 'abrizer/captions'
require 'abrizer/canvas'
require 'abrizer/data'
require 'abrizer/temporary_poster'
require 'abrizer/all'



module Abrizer
  # Your code goes here...
end
