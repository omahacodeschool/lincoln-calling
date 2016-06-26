$(document).ready(function(){
    $('.artists__artist').click(function(){
        var id = $(this).data('id');
        $.post('/artists/' + id)
        .done(function(data){
            $('#artistName').text(data["name"]);
            $('#artistCity').text(data["origin"]);
            $('#artistWebsite').text(data["website"]);
            $('.info__bio').text(data["bio"]);
            $('.overlay__image').css('background-image', 'url(' + data["image"]["url"] + ')');
            $('body').css('overflow', 'hidden');
            $('.body__overlay').addClass('overlay--show');
        });
    });
    $('.venue__concert').click(function(){
        var id = $(this).data('id');
        $.post('/artists/' + id)
        .done(function(data){
            $('#artistName').text(data["name"]);
            $('#artistCity').text(data["origin"]);
            $('#artistWebsite').text(data["website"]);
            $('.info__bio').text(data["bio"]);
            $('.overlay__image').css('background-image', 'url(' + data["image"]["url"] + ')');
            $('body').css('overflow', 'hidden');
            $('.body__overlay').addClass('overlay--show');
        });
    });
    $('.hero__headliners a').click(function(){
        var id = $(this).data('id');
        $.post('/artists/' + id)
        .done(function(data){
            $('#artistName').text(data["name"]);
            $('#artistCity').text(data["origin"]);
            $('#artistWebsite').text(data["website"]);
            $('.info__bio').text(data["bio"]);
            $('.overlay__image').css('background-image', 'url(' + data["image"]["url"] + ')');
            $('body').css('overflow', 'hidden');
            $('.body__overlay').addClass('overlay--show');
        });
    });
    $('.overlay__close').click(function(){
        $('body').css('overflow', 'auto');
        $('.body__overlay').removeClass('overlay--show');
    });
});