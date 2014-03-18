<!-- PAGE CONTENT BEGINS -->
    <div class="row">
        <div class="col-xs-4">
            <div class="align-center">
                Image
            </div>
        </div><!-- /.col -->
        <div class="col-xs-4">
            <div class="align-center">
                    Information
                </div>
            </div><!-- /.col -->
        <div class="col-xs-4">
            <g:form name="retailClientSignature" id="retailClientSignature"
                          method="post" role="form" class="form-horizontal"
                          url="[controller: 'retailClient', action:'saveRetailClientSignature']"
                          enctype="multipart/form-data" update="retailClientSignature">
                <div class="form-group">
                    <label for="signature" class="col-sm-12 control-label align-center">
                        Signature<sup class="red">*</sup>
                    </label>
                    <div class="col-sm-12">
                        <input type="file" class="col-xs-10 col-sm-12"
                               id="signature" name="signature" required>
                    </div>
                </div>
                <div class="align-center">
                    <button type="submit" name="signatureSubmit" id="signatureSubmit" class="btn btn-info"><i class="icon-ok bigger-110">
                    </i>Update</button>
                </div>
            </g:form>
        </div><!-- /.col -->
    </div>
