@ $this->inc('header');
@if ($logged_in == 'yes'):
<h4>Hello, <a href="profile.php?user={{$username}}">{{$username}}</a></h4>

@else:
<p>You need to login or <a href="#signin" data-toggle="modal" data-target=".bs-modal-sm">register</a>.</p>
<!-- Modal -->
<div class="modal fade bs-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <br>
            <div class="bs-example bs-example-tabs">
                <ul id="myTab" class="nav nav-tabs">
                    <li class="active"><a href="#signup" data-toggle="tab">Register</a></li>
                    <li class=""><a href="#why" data-toggle="tab">Why?</a></li>
                </ul>
            </div>
            <div class="modal-body">
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in" id="why">
                        <p>We need this information so that you can receive access to the site and its content. Rest assured your information will not be sold, traded, or given to anyone.</p>
                        <p></p><br> Please contact <a mailto:href="JoeSixPack@Sixpacksrus.com"></a>JoeSixPack@Sixpacksrus.com</a> for any other inquiries.</p>
                    </div>
                    <div class="tab-pane fade active in" id="signup">
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