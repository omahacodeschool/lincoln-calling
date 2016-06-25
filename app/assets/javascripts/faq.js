$(document).ready(function(){
    $('.faq__question').click(function(){
        $('.faq__answer').removeClass('faq__show');
        $(this).next().addClass('faq__show');
    });
});