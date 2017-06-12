//= require jquery3
//= require jquery_ujs

$(function(){
    $('.hiddenform .mylink').click(function(){
        $(this).hide();
        $('.hiddenform .form').show();
        return false;
    });
});