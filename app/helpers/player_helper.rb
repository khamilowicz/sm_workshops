module PlayerHelper

  def song_controls track
    audio_tag(track.stream_url, id: track.sc_id) + raw(<<-END)
   <div class="controls">
      <a class="play" href="#" id="#{track.sc_id}"></a>
      <a class="fav not" href="#"></a>
    </div>
    END
  end

end
