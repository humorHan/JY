{{each}}
    {{if $index % 2 == 0}}
        <li class="case mt20 box-shadow">
            <a class="block" href="/caseDetail?id={{$value.id}}">
                <img src="{{$value.image_key | getUrl}}" />
                <div class="case-mask">
                    <div class="all-title-wrap center">
                        <div class="title-wrap">
                            <span class="title-line block middle"></span>
                            <span class="title middle">{{$value.title}}</span>
                            <span class="title-line block middle"></span>
                        </div>
                        <div class="subTitle">{{$value.subtitle}}</div>
                    </div>
                </div>
            </a>
        </li>
    {{else}}
        <li class="case mt20 ml20 box-shadow">
            <a class="block" href="/caseDetail?id={{$value.id}}">
                <img src="{{$value.image_key | getUrl}}" />
                <div class="case-mask">
                    <div class="all-title-wrap center">
                        <div class="title-wrap">
                            <span class="title-line block middle"></span>
                            <span class="title middle">{{$value.title}}</span>
                            <span class="title-line block middle"></span>
                        </div>
                        <div class="subTitle">{{$value.subtitle}}</div>
                    </div>
                </div>
            </a>
        </li>
    {{/if}}
{{/each}}