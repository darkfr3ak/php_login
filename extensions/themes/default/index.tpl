@ $this->inc('header');
@if ($logged_in == 'yes'):
<h3>Hello, <a href="profile.php?user={{$username}}">{{$username}}</h3>

<ul>
    <li><a href="update.php">Update Profile</a></li>
    <li><a href="changepassword.php">Change Password</a></li>
</ul>
@else:
<p>You need to <a href="#signup" data-toggle="modal" data-target=".bs-modal-sm">login</a> or <a href="#signin" data-toggle="modal" data-target=".bs-modal-sm">register.</a></p>
<!-- Modal -->
<div class="modal fade bs-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <br>
            <div class="bs-example bs-example-tabs">
                <ul id="myTab" class="nav nav-tabs">
                    <li class="active"><a href="#signin" data-toggle="tab">Sign In</a></li>
                    <li class=""><a href="#signup" data-toggle="tab">Register</a></li>
                    <li class=""><a href="#why" data-toggle="tab">Why?</a></li>
                </ul>
            </div>
            <div class="modal-body">
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in" id="why">
                        <p>We need this information so that you can receive access to the site and its content. Rest assured your information will not be sold, traded, or given to anyone.</p>
                        <p></p><br> Please contact <a mailto:href="JoeSixPack@Sixpacksrus.com"></a>JoeSixPack@Sixpacksrus.com</a> for any other inquiries.</p>
                    </div>
                    <div class="tab-pane fade active in" id="signin">
                        <form class="form-horizontal col-md-offset-1" role="form" action="login.php" method="POST">
                            <fieldset>
                                <!-- Sign In Form -->
                                <!-- Text input-->
                                <div class="control-group">
                                    <label class="control-label" for="userid">Alias:</label>
                                    <div class="controls">
                                        <input required="" id="username" name="username" type="text" class="form-control" placeholder="JoeSixpack" class="input-medium" required="">
                                    </div>
                                </div>

                                <!-- Password input-->
                                <div class="control-group">
                                    <label class="control-label" for="passwordinput">Password:</label>
                                    <div class="controls">
                                        <input required="" id="password" name="password" class="form-control" type="password" placeholder="********" class="input-medium">
                                    </div>
                                </div>
                                <input type="hidden" name="token" value="<?php echo Token::generate(); ?>">

                                <!-- Multiple Checkboxes (inline) -->
                                <div class="control-group">
                                    <label class="control-label" for="rememberme"></label>
                                    <div class="controls">
                                        <label class="checkbox inline" for="remember">
                                            <input type="checkbox" name="remember" id="remember" value="Remember me">
                                            Remember me
                                        </label>
                                    </div>
                                </div>

                                <!-- Button -->
                                <div class="control-group">
                                    <label class="control-label" for="signin"></label>
                                    <div class="controls">
                                        <button id="signin" name="signin" class="btn btn-success">Sign In</button>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="signup">
                        <form class="form-horizontal col-md-offset-1" role="form" action="register.php" method="POST">
                            <fieldset>
                                <!-- Sign Up Form -->
                                <!-- Text input-->
                                <div class="control-group">
                                    <label class="control-label" for="name">Your Name:</label>
                                    <div class="controls">
                                        <input id="name" name="name" class="form-control" type="text" placeholder="JoeSixpack" class="input-large" required="">
                                    </div>
                                </div>

                                <!-- Text input-->
                                <div class="control-group">
                                    <label class="control-label" for="username">Username:</label>
                                    <div class="controls">
                                        <input id="username" name="username" class="form-control" type="text" placeholder="JoeSixpack" class="input-large" required="">
                                    </div>
                                </div>

                                <!-- Password input-->
                                <div class="control-group">
                                    <label class="control-label" for="password">Password:</label>
                                    <div class="controls">
                                        <input id="password" name="password" class="form-control" type="password" placeholder="********" class="input-large" required="">
                                        <em>1-8 Characters</em>
                                    </div>
                                </div>

                                <!-- Text input-->
                                <div class="control-group">
                                    <label class="control-label" for="password_again">Re-Enter Password:</label>
                                    <div class="controls">
                                        <input id="password_again" class="form-control" name="password_again" type="password" placeholder="********" class="input-large" required="">
                                    </div>
                                </div>

                                <!-- Multiple Radios (inline) -->
                                <br>
                                <div class="control-group">
                                    <label class="control-label" for="humancheck">Humanity Check:</label>
                                    <div class="controls">
                                        <label class="radio inline" for="humancheck-0">
                                            <input type="radio" name="humancheck" id="humancheck-0" value="robot" checked="checked">I'm a Robot</label>
                                        <label class="radio inline" for="humancheck-1">
                                            <input type="radio" name="humancheck" id="humancheck-1" value="human">I'm Human</label>
                                    </div>
                                </div>
                                <input type="hidden" name="token" value="<?php echo Token::generate(); ?>">

                                <!-- Button -->
                                <div class="control-group">
                                    <label class="control-label" for="confirmsignup"></label>
                                    <div class="controls">
                                        <button id="confirmsignup" name="confirmsignup" class="btn btn-success">Sign Up</button>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <center>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </center>
            </div>
        </div>
    </div>
</div>
@endif
@ $this->inc('footer');