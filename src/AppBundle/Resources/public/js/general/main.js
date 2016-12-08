+function($){
    $.fn.overflowNavs = function (options) {
        $('.overflow-nav').remove();
        var ul = $(this);
        ul.children('li').each(function () {
            $(this).css('display', 'block');
        });
        var parent = options.parent ? options.parent : ul.parents('.navbar');
        var collapse = $('div.navbar-collapse').length;
        var collapsed = false;
        if (collapse) {
            collapsed = $('.navbar-toggle').is(":visible");
        }
        if (collapsed === false) {
            var parent_width = $(parent).parent().width();
            var dropdown = $('li.overflow-nav', ul);
            if (!dropdown.length) {
                dropdown = $('<li class="overflow-nav dropdown"></li>');
                dropdown.append($('<a class="dropdown-toggle" data-toggle="dropdown" href="#">' + options.more + '<span class="glyphicon glyphicon-menu-down"></span></a>'));
                dropdown.append($('<ul class="dropdown-menu"></ul>'));
            }
            var width = $('.navbar-brand').width() + 65; // Allow for padding
            ul.children('li').each(function () {
                var $this = $(this);
                var $thisouter = Math.ceil($(this).outerWidth());
                width += $thisouter;
                if (width >= parent_width) {
                    $this.css('display', 'none');
                    var $li = $this.clone(true);
                    if ($li.find('li:first').length > 0) {
                        dropdown.children('ul.dropdown-menu').append($li.find('li:first').css('display', 'block'));
                    } else {
                        dropdown.children('ul.dropdown-menu').append($li.css('display', 'block'));
                    }
                }
            });
            if (!dropdown.children('ul.dropdown-menu').children().length) {
                dropdown.remove();
            } else {
                if (!ul.children('li.overflow-nav').length) {
                    ul.append(dropdown);
                }
            }
        }
    };
}(window.jQuery);