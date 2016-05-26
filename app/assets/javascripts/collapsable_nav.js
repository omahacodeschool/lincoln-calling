$(document).ready(function(){
    $('.links--dropdown-tab').click(function(){
        if ($(this).hasClass('active')) {
            $('.links__link').removeClass('active');
            $('.links__dropdown').removeClass('active');
        } else {
            $('.links__link').removeClass('active');
            $(this).addClass('active');
            $('.links__dropdown').removeClass('active');
            var id = $(this).children().first().attr('id');
            var dropdown = $('.links__dropdown--' + id);
            dropdown.addClass('active');
        }
    });
    
    $('.header__menu').click(function(){
        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
            $(this).children('h4').text('OPEN MENU');
            $('.menu__up').removeClass('menu__up').addClass('menu__down');
        } else {
            $(this).addClass('active');
            $(this).children('h4').text('CLOSE MENU');
            $('.menu__down').removeClass('menu__down').addClass('menu__up');
        }
    });
});
