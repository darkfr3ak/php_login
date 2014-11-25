@ $this->inc('header');
<div class="[ col-sm-6 col-md-4 ]">
    <div class="[ info-card ]">
        <img style="width: 100%" src="{{$picture}}" />
        <div class="[ info-card-details ] animate">
            <div class="[ info-card-header ]">
                <h1> {{$name}} </h1>
                <h3> aka {{$uname}} </h3>
            </div>
            <div class="[ info-card-detail ]">
                <!-- Description -->
                <p>{{$email}}</p>
                <p>{{$bio}}</p>
            </div>
        </div>
    </div>
</div>
{{$friends}}
@ $this->inc('footer');