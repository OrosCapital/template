<table class="table">
    <tr class="success">
        <th>SI No</th>
        <th>Name</th>
        <th>Account No</th>
        <th>Image</th>
        <th>Signature</th>
        <th></th>
        <th></th>
    </tr>
    <tr>
        <td>1</td>
        <td>Golam Murtoza</td>
        <td>0652054</td>
        <td><img src="/template/static/images/assets/avatars/user.jpg" height="20" width="30"></td>

        <td>
             <div id="signPreview">
                <img src="${resource(dir:'images/userImages',file: '')}" height="60" width="60" id="signId">
                <input type="button" value="Edit" id="editSignature" style="background: darkolivegreen;width: 60px;height: 30px">
            </div>

            <form name="multiform" id="multiform" action="" method="POST" enctype="multipart/form-data">
                <input type="text" value="abc" name="name">
                <input type="file" name="photo" id="imgId"  style="width: 100px;display: inline;background: darkolivegreen"/>
                <input type="submit" value="Upload" id="upload" style="background: #696969"/><br/>
            </form>
        </td>
    </tr>
</table>
<div id="signShow"> </div>