$(document).ready(function(){
    $('.headlines__text').hover(function(){
        var index = $(this).data('index');
        $('.images__news').removeClass('active');
        $('.headlines__text').removeClass('active');
        $(this).addClass('active');
        $('.images__news').eq(index).addClass('active');
    });
});