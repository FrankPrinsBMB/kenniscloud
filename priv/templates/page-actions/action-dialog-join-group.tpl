{% if m.acl.user %}
    {% if leave|default:false %}
        <p>
           Wil je deze kennisgroep verlaten?
        </p>
        <div class="main-aside__view">
            {% button class="btn--primary -icon" text=_"Ja, helaas"
                      postback={leave target=id.id} delegate=`kenniscloud`
                      action={dialog_close}
            %}
        </div>
    {% else %}
        <p>
            Wil je graag aan deze kennisgroep deelnemen?
        </p>
        <div class="main-aside__view">
            {% button class="btn--primary -icon" text=_"Ja, ik doe mee"
                      postback={join target=id.id} delegate=`kenniscloud`
                      action={dialog_close}
            %}
        </div>
    {% endif %}
{% else %}
    <p>
        Om dit te doen moet je ingelogd zijn.
    </p>
{% endif %}
