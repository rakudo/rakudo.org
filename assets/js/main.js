$(function(){
    process_platform_specific_content();
    setup_show_archived_versions_button();
    setup_accordion_scroller();
    $(function () { $('[data-toggle="tooltip"]').tooltip() })

    setTimeout(function() {
        $('.need-help').removeClass('invisible').animate({opacity: 1});
    }, 5000);
    $(window).on('load', function() {
        $('.preload').removeClass('preload');
    });

    setup_same_height();
});

function setup_same_height() {
    $.fn.sameHeight = function() {
        var max = {};
        $(this).each(function(){
            var h = $(this).outerHeight();
            var o = $(this).offset().top;
            if (max[o] === undefined) max[o] = 0
            if ( h > max[o] ) { max[o] = h }
        });
        $(this).each(function(){
            $(this).css('min-height', max[$(this).offset().top] + 'px')
        });
    }

    $('#alt-star .card-body, #downloads-rakudo-third-party .card-body').sameHeight();
}

function setup_accordion_scroller() {
    $('.accordion').on('shown.bs.collapse', function() {
        var el = $(this).find('.collapse.show');
        var offset = el.offset();
        var scroll = $(window).scrollTop();
        if (offset.top < scroll || offset.top + el.height()
            > scroll + $(window).height()) {
            $('html, body').animate({ scrollTop: offset.top });
        }
    });
}

function setup_show_archived_versions_button() {
    $('.show-archived-versions').on('click', function(){
        $(this).parents('table,.article-list').find('.archived')
            .css({opacity: 0})
            .removeClass('archived').animate({opacity: 1}, 1000);
        $(this).remove();
    });
}

function process_platform_specific_content() {
    // Downloads page platform pre-selection
    var ua = query_param('platform', platform.ua);
    if (fam === null) fam = 'generic';
    ua = ua.toLowerCase();
    if (ua.match(/windows/))
        $('#download-tab-windows').prop("checked", true);
    else if (ua.match(/linux/))
        $('#download-tab-linux').prop("checked", true);
    else if (ua.match(/os x|osx|ios|ipad/))
        $('#download-tab-macos').prop("checked", true);
    else
        $('#download-tab-source').prop("checked", true);

    // Star Bundle platform highlight
    var fam = query_param('platform', platform.os.family);
    if (fam === null) fam = 'generic';
    fam = fam.toLowerCase();

    var wanted;
    if (fam.match('windows'))
        wanted = 'windows';
    else
        wanted = fam.replace(/ /g, '_');

    if (! $('.downloads-panel [data-platform-mark~=' + wanted + ']').length)
        wanted = 'generic';

    $('.downloads-panel [data-platform-mark]').each(function(){
        if ($(this).attr('data-platform-mark').indexOf(wanted) >= 0)
            $(this)   .addClass('highlight')
            .next('a').addClass('highlight');
    });
}

function query_param(wanted, or) {
    var params = decodeURIComponent(
        window.location.search.substring(1)
    ).split('&'), name, i;

    for (i = 0; i < params.length; i++) {
        param = params[i].split('=');
        if (param[0] === wanted)
            return param[1] === undefined ? true : param[1]
    }
    return or;
}
