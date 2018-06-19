<div class="navbar-fixed">
  <nav class="white" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="/" class="brand-logo left black-text">%($siteTitle%)</a>
      <ul class="right">
        <li><a href="#!" onclick="$('#searchbar').toggle()" class="black-text"><i class="material-icons">search</i></a></li>
      </ul>
    </div>
  </nav>
</div>
<div id="searchbar" class="navbar-fixed" style="z-index: 997; display: none">
  <nav class="white" role="navigation">
    <div class="nav-wrapper container">
      <form action="/search" method="post">
        <div class="row">
          <div class="input-field col s10">
            <input type="search" id="search" name="search" class="black-text" placeholder="Search tags..." required>
            <label for="search"><i class="material-icons black-text">search</i></label>
          </div>
          <div class="input-field col s2">
            <select name="confidence" class="browser-default black-text tooltipped" style="margin-top: 12px" data-position="left" data-delay="50" data-tooltip="Min. tag confidence">
              <option value="0.95">95%</option>
              <option value="0.90">90%</option>
              <option value="0.85">85%</option>
              <option value="0.80">80%</option>
              <option value="0.75">75%</option>
              <option value="0.70">70%</option>
              <option value="0.65">65%</option>
              <option value="0.60">60%</option>
              <option value="0.55">55%</option>
              <option selected value="0.50">50%</option>
              <option value="0.45">45%</option>
              <option value="0.40">40%</option>
              <option value="0.35">35%</option>
              <option value="0.30">30%</option>
              <option value="0.25">25%</option>
            </select>
          </div>
        </div>
      </form>
    </div>
  </nav>
</div>

<div id="main-copy" class="container">

% run_handlers $handlers_body_head

% run_handler $handler_body_main

% run_handlers $handlers_body_foot

</div>

<footer class="page-footer pink" style="padding-top: 0">
  <div class="footer-copyright">
    <div class="container">
    Powered by <a class="grey-text text-lighten-3" href="http://kfarwell.org/projects/autobooru/">Autobooru</a>
    </div>
  </div>
</footer>

<script src="/_werc/pub/jquery-2.1.1.min.js"></script>
<script src="/_werc/pub/materialize.js"></script>
<script>
  $(document).ready(function() {
    $('select').material_select();
  });
