{# Search suggestions query #}

{%
    with
        results_template,
        cat|default:'',
        paged|default:true,
        cat_exclude|default:['meta', 'menu', 'admin_content_query'],
        cat_exclude_defaults|default:"true",
        search_text|default:q.value|default:q.qs,
        cg_name,
        pagelen|default:10,
        unfinished_or_nodate|default:"",
        is_authoritative|default:1
    as
        results_template,
        cat,
        paged,
        cat_exclude,
        cat_exclude_defaults,
        search_text,
        content_group,
        pagelen,
        unfinished_or_nodate,
        is_authoritative
%}
    {% with m.search[{query cat=cat cat_exclude=cat_exclude cat_exclude_defaults=cat_exclude_defaults cat_promote=cat_promote cat_promote_recent=cat_promote_recent is_authoritative=is_authoritative unfinished_or_nodate=unfinished_or_nodate content_group=content_group text=search_text pagelen=pagelen}] as result %}
        {% include results_template result=result %}
    {% endwith %}

{% endwith %}
