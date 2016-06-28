var venuesStart;
var venuesEnd;

$(document).ready(function(){
    if (Modernizr.mq('(min-width: 800px)')) {
        venuesStart = 0;
        venuesEnd = 5;
    } else if (Modernizr.mq('(min-width: 600px)')) {
        venuesStart = 0;
        venuesEnd = 3;
    } else {
        venuesStart = 0;
        venuesEnd = 1;
    }
    $('.schedule-nav__venues .venues__venue').slice(venuesStart, venuesEnd).addClass('show');
    $('.concerts__venue').eq(0).addClass('first--venue');
    $('.concerts__venue').slice(venuesStart, venuesEnd).addClass('venue--show');
    
    $('.schedule-nav__left').click(function(){
        $('.schedule-nav__right').removeClass('hide');
        venuesStart = venuesStart - 1;
        venuesEnd = venuesEnd - 1;
        if (venuesStart == 0) {
            $(this).addClass('hide');
        }
        $('.schedule-nav__venues .venues__venue').removeClass('show');
        $('.concerts__venue').removeClass('venue--show');
        $('.schedule-nav__venues .venues__venue').slice(venuesStart, venuesEnd).addClass('show');
        $('.concerts__venue').slice(venuesStart, venuesEnd).addClass('venue--show');
        $('.concerts__venue').removeClass('first--venue');
        $('.concerts__venue').eq(venuesStart).addClass('first--venue');
    });
    
    $('.schedule-nav__right').click(function(){
        $('.schedule-nav__left').removeClass('hide');
        venuesStart = venuesStart + 1;
        venuesEnd = venuesEnd + 1;
        var totalVenues = $('.schedule-nav__venues .venues__venue').length;
        if (venuesEnd == totalVenues) {
            $(this).addClass('hide');
        }
        $('.schedule-nav__venues .venues__venue').removeClass('show');
        $('.concerts__venue').removeClass('venue--show');
        $('.schedule-nav__venues .venues__venue').slice(venuesStart, venuesEnd).addClass('show');
        $('.concerts__venue').slice(venuesStart, venuesEnd).addClass('venue--show');
        $('.concerts__venue').removeClass('first--venue');
        $('.concerts__venue').eq(venuesStart).addClass('first--venue');
    });
    
    $('.days__day').click(function(){
        $('.days__select').addClass('select--show');
    });
    
    $('.select__day a').click(function(event){
        $('.days__select').removeClass('select--show');
        event.preventDefault();
        var dayText = $(this).parent().data('date');
        $('.days__day.active').text(dayText);
        $.get($(this).attr('href'), function(data) {
            $('.schedule__concerts').replaceWith($(data).find('.schedule__concerts'));
            if (Modernizr.mq('(min-width: 800px)')) {
                venuesEnd = venuesStart + 5;
            } else if (Modernizr.mq('(min-width: 600px)')) {
                venuesEnd = venuesStart + 3;
            } else {
                venuesEnd = venuesStart + 1;
            }
            $('.schedule-nav__venues .venues__venue').removeClass('show');
            $('.schedule-nav__venues .venues__venue').slice(venuesStart, venuesEnd).addClass('show');
            $('.concerts__venue').removeClass('venue--show');
            $('.concerts__venue').slice(venuesStart, venuesEnd).addClass('venue--show');
            $('.concerts__venue').eq(venuesStart).addClass('first--venue');
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
        });
    });
});

$(window).resize(function(){
    if (Modernizr.mq('(min-width: 800px)')) {
        venuesEnd = venuesStart + 5;
    } else if (Modernizr.mq('(min-width: 600px)')) {
        venuesEnd = venuesStart + 3;
    } else {
        venuesEnd = venuesStart + 1;
    }
    $('.schedule-nav__venues .venues__venue').removeClass('show');
    $('.schedule-nav__venues .venues__venue').slice(venuesStart, venuesEnd).addClass('show');
    $('.concerts__venue').removeClass('venue--show');
    $('.concerts__venue').slice(venuesStart, venuesEnd).addClass('venue--show');
});