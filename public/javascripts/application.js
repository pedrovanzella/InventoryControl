// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
<script type="text/javascript">
        $(function() {
            $('table')
                      .tablesorter({widthFixed: true, widgets: ['zebra']})
                      .tablesorterPager({container: $("#pager")});
        })
    </script>
