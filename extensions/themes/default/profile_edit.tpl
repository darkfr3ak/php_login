@ $this->inc('header');
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

        <h3>Personal info</h3>

        <form class="form-horizontal" role="form" action="" method="post">
            <div class="form-group">
                <label class="col-lg-3 control-label">Name:</label>
                <div class="col-lg-8">
                    <input class="form-control" name="name" type="text" value="{{$name}}">
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-3 control-label">Email:</label>
                <div class="col-lg-8">
                    <input class="form-control" name="email" type="text" value="{{$email}}">
                </div>
            </div>
            <input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
            <div class="form-group">
                <label class="col-md-3 control-label">Username:</label>
                <div class="col-md-8">
                    <input class="form-control" name="username" type="text" value="{{$username}}">
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label"></label>
                <div class="col-md-8">
                    <input type="submit" class="btn btn-primary" value="Save Changes">
                    <span></span>
                    <input type="reset" class="btn btn-default" value="Cancel">
                </div>
            </div>
        </form>
    </div>
</div>
@ $this->inc('footer');