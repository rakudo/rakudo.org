$(function(){
    process_platform_specific_content();
});

function process_platform_specific_content() {
    var fam    = query_param('platform', platform.os.family).toLowerCase(),
        wanted = 'generic';

    if (fam.indexOf('windows') >= 0 && fam.indexOf('windows phone') == -1) {
        wanted = 'windows';
    }
    else if (fam.match(/ubuntu|debian|fedora|red hat|suse|ios|android/)) {
        wanted = fam.replace(/ /g, '_');
    }

    $('.platform-options').each(function(){
        var show = $(this).find('[data-platform~=' + wanted + ']');
        if (! show.length)
            show = $(this).find('[data-platform~=generic]');
        $('[data-platform]').css({position: 'absolute', left: '-9999px'});
        show.css({position: 'static', left: 'auto'});
    })

    if ($('.downloads-panel [data-platform-mark~=' + wanted + ']').length) {
        $('.downloads-panel [data-platform-mark]').each(function(){
            if ($(this).attr('data-platform-mark').indexOf(wanted) >= 0) {
                $(this).removeClass('btn-dark').addClass('btn-primary')
                .next('a').removeClass('btn-dark').addClass('btn-warning');
            }
        });
    }
    else {
        $('.downloads-panel .download')
            .removeClass('btn-dark').addClass('btn-primary')
        .next('a')
            .removeClass('btn-dark').addClass('btn-warning')
    }
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