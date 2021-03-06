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
<div class="[ col-sm-6 col-md-4 ]">
    Freunde ({{$friendsCount}})
    <ul class="list-unstyled">
        @if (count($friends) > 0):
        @foreach ($friends as $friend):
        <li><a href="profile.php?user={{$friend['username']}}">{{$friend['username']}} ({{$friend['name']}})</a></li>
        @endforeach
        @endif
    </ul>
</div>
@ $this->inc('footer');