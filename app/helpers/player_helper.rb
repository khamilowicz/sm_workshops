module PlayerHelper

  def song_controls track
    audio_tag(track.stream_url, id: track.sc_id) + raw(<<-END)
   <div class="controls">
      <a class="play" href="#" id="#{track.sc_id}"></a>
      #{button_to "", favorite_track_path(id: track.sc_id), remote: true, class: "fav"}
    </div>
    END
  end

end
