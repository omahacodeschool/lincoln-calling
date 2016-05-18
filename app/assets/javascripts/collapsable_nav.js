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
});