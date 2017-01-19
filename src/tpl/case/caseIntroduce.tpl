<div class="case-detail-bg-wrap">
    <div style="background:url({{background_key | getUrl}}) center 0 no-repeat;min-height: 1000px;">
        <div class="w1200 auto relative clearFix">
            <div class="case-wrap">
                <p class="case-title font30 bold">{{title}}</p>
                <div class="case-description font16">{{description}}</div>
            </div>
            <div class="case-fake-border"></div>
            <div class="materiel-wrap">
                <p class="font24 mb20 bold spacing2">物料品单</p>
                <ul class="materiel">
                    {{each products}}
                        <li class="relative">
                            <a class="block" href="{{$value.url}}">
                                <img src="{{$value.image_key | getUrl}}"/>
                                <div class="item-name mask center font14">
                                    {{$value.name}}
                                </div>
                            </a>
                        </li>
                    {{/each}}
                </ul>
            </div>
            <div class="design-wrap">
                <p class="font24 mb20 bold spacing2">设计项目</p>
                <ul class="design">
                    {{each designs}}
                    <li class="relative">
                        <img src="{{$value.image_key | getUrl}}"/>
                        <div class="item-name mask center font14">
                            {{$value.name}}
                        </div>
                    </li>
                    {{/each}}
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="case-content w1200 auto">
    {{#content}}
</div>

<div class="company-bg w1200 auto" style="background:#FFF url({{custom.background_key | getUrl}}) center 0 no-repeat;">
    <img class="company-logo block top" src="{{custom.logo_key | getUrl}}"/>
    <div class="company-description block top white">
        <div class="mb10 font18 bold">{{#custom.name}}</div>
        <div style="max-width: 910px;">{{#custom.description}}</div>
    </div>
</div>
