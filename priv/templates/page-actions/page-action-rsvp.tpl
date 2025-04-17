
{% if id.action_rsvp|to_integer|is_defined and not id.date_end|in_past %}
    {% with btn_class|default:"page-action--rsvp" as btn_class %}
    {% with id.rsvp_max_participants|to_integer as max_participants %}
    {% with id.s.rsvp|length as participants %}
    {% with max_participants|is_undefined or (participants < max_participants) as can_connect %}
    {% live
        template="page-actions/page-action-connect-user.tpl"
        topic={subject id=id predicate=`rsvp`}
        id=id
        predicate='rsvp'
        btn_connect_text=_"RSVP"
        btn_cancel_text=_"Cancel RSVP"
        btn_class=btn_class
        can_connect=can_connect
    %}
    {% endwith %}
    {% endwith %}
    {% endwith %}
    {% endwith %}
{% endif %}
