$(document).ready(function(){
    $('.days__day').hover(function(){
        $('.days__day').removeClass('active');
        $(this).addClass('active');
        var sibling = 0;
        var currentElement = $(this);
        while (currentElement.prev()[0] != undefined) {
            currentElement = currentElement.prev();
            sibling++;
        }
        $('.shows__show').removeClass('active');
        $('.shows__show').eq(sibling).addClass('active');
    });
});