{{each}}
    <li>
        <a class="block" href="/caseDetail?id={{$value.id}}">
            <img src="{{$value.image_key}}">
            <div class="case-mask">
                <div class="part1" style="margin-top: 152px;">
                    <div class="title font22 center line-height46">{{$value.title}}</div>
                    <div class="subTitle font18 center">{{$value.subTitle}}</div>
                </div>
                <div class="part2 none" style="margin-top: 18px;">
                    <div class="title font22 center line-height46">{{$value.title}}</div>
                    <div class="subTitle font18 center" style="margin-bottom:25px;">{{$value.subTitle}}</div>
                    <div class="describe font14">{{$value.description}}</div>
                </div>
            </div>
        </a>
    </li>
{{/each}}