function showArtist(id) {
    if ($(this).data('id')) {
        var id = $(this).data('id');
    }
    $.post('/artists/' + id)
    .done(function(data){
        var artist = $.parseJSON(data["artist"]);
        var concerts = $.parseJSON(data["concerts"]);
        $('#artistName').text(artist["name"]);
        $('#artistCity').text(artist["origin"]);
        $('#artistWebsite').html('<a target="_blank" href="' + artist["website"] + '">' + artist["website"] + '</a>');
        $('#artistBio').html(artist["bio"]);
        $('.overlay__image').css('background-image', 'url(' + artist["image"]["url"] + ')');
        $('body').css('overflow', 'hidden');
        $('.body__overlay').addClass('overlay--show');
        overlayArtist = artist["id"];
        // $('#artistConcerts').html('');
        // for (var i = 0, l = concerts.length; i < l; i++) {
        //     $('#artistConcerts').append('<div class="concerts__concert"><div class="concert__date">' + concerts[i]["start_time"] + '</div><div class="concert__venue">' + concerts[i]["venue"] + '</div></div>')
        // }
    });
}

var overlayArtist = 0;

$(document).ready(function(){
    $('.artists__artist').click(showArtist);
    $('.shows__show p').click(showArtist);
    $('.venue__concert').click(showArtist);
    $('.hero__headliners a').click(function(e){
        e.preventDefault;
    });
    $('.hero__headliners a').click(showArtist);
    $('.overlay__close').click(function(){
        $('body').css('overflow', 'auto');
        $('.body__overlay').removeClass('overlay--show');
    });
    $('.overlay__prev').click(function(){
        $.post('/artists/' + overlayArtist + '/prev')
        .done(function(data){
            showArtist(data["id"]);
        });
    });
    $('.overlay__next').click(function(){
        $.post('/artists/' + overlayArtist + '/next')
        .done(function(data){
            showArtist(data["id"]);
        });
    });
});
