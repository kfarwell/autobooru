<form action="" method="post" onsubmit="$('#progress').show()">
    <div class="input-field">
        <textarea id="images" name="images" class="materialize-textarea validate"></textarea>
        <label for="images">Image URLs</label>
    </div>
    <div id="progress" style="display: none">
        <div class="progress pink lighten-4">
            <div class="indeterminate pink"></div>
        </div>
        <p>This may take a minute. Do not resubmit the form.</p><br />
    </div>
    <button type="submit" class="btn waves-effect waves-light pink">Post<i class="material-icons right">send</i></button>
</form>
