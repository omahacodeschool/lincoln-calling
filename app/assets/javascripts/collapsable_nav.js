$(document).ready(function(){
    $('.link__text').click(function(){
        $('.links__dropdown').removeClass('active');
        var id = $(this).attr('id');
        var dropdown = $('.links__dropdown--' + id);
        dropdown.addClass('active');
    });
});