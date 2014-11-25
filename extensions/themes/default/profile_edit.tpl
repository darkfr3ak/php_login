@ $this->inc('header');
<form action="" method="post" class="form-signin">
    <div class="field">
        <label for="name" class="sr-only">Name</label>
        <input type="text" name="name" class="form-control" value="{{$username}}">
        <label for="email" class="sr-only">Email</label>
        <input type="text" name="email" class="form-control" value="{{$email}}">

        <input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
        <button type="submit" class="btn btn-default" value="Update">Update</button>
    </div>
</form>
<h3>Edit Profile</h3>
<hr>
<div class="row">
    <!-- left column -->
    <div class="col-md-3">
        <div class="text-center">
            <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
            <h6>Upload a different photo...</h6>

            <input type="file" class="form-control">
        </div>
    </div>

    <!-- edit form column -->
    <div class="col-md-9 personal-info">
        <div class="alert alert-info alert-dismissable">
            <a class="panel-close close" data-dismiss="alert">×</a>
            <i class="fa fa-coffee"></i>
            This is an <strong>.alert</strong>. Use this to show important messages to the user.
        </div>
        <h3>Personal info</h3>

        <form class="form-horizontal" role="form">
            <div class="form-group">
                <label class="col-lg-3 control-label">First name:</label>
                <div class="col-lg-8">
                    <input class="form-control" type="text" value="Jane">
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-3 control-label">Last name:</label>
                <div class="col-lg-8">
                    <input class="form-control" type="text" value="Bishop">
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-3 control-label">Company:</label>
                <div class="col-lg-8">
                    <input class="form-control" type="text" value="">
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-3 control-label">Email:</label>
                <div class="col-lg-8">
                    <input class="form-control" type="text" value="janesemail@gmail.com">
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-3 control-label">Time Zone:</label>
                <div class="col-lg-8">
                    <div class="ui-select">
                        <select id="user_time_zone" class="form-control">
                            <option value="Hawaii">(GMT-10:00) Hawaii</option>
                            <option value="Alaska">(GMT-09:00) Alaska</option>
                            <option value="Pacific Time (US &amp; Canada)">(GMT-08:00) Pacific Time (US &amp; Canada)</option>
                            <option value="Arizona">(GMT-07:00) Arizona</option>
                            <option value="Mountain Time (US &amp; Canada)">(GMT-07:00) Mountain Time (US &amp; Canada)</option>
                            <option value="Central Time (US &amp; Canada)" selected="selected">(GMT-06:00) Central Time (US &amp; Canada)</option>
                            <option value="Eastern Time (US &amp; Canada)">(GMT-05:00) Eastern Time (US &amp; Canada)</option>
                            <option value="Indiana (East)">(GMT-05:00) Indiana (East)</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">Username:</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" value="janeuser">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">Password:</label>
                <div class="col-md-8">
                    <input class="form-control" type="password" value="11111122333">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">Confirm password:</label>
                <div class="col-md-8">
                    <input class="form-control" type="password" value="11111122333">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label"></label>
                <div class="col-md-8">
                    <input type="button" class="btn btn-primary" value="Save Changes">
                    <span></span>
                    <input type="reset" class="btn btn-default" value="Cancel">
                </div>
            </div>
        </form>
    </div>
</div>
@ $this->inc('footer');