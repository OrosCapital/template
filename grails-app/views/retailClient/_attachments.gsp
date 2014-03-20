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
        <div class="col-xs-4 col-sm-4 align-center">
            <div>
                Signature<sup class="red">*</sup>
            </div>
            <div id="signaturePreview">
                <img src="" height="150" width="150" id="signatureId" style="margin-top: 10px; margin-bottom: 10px;">
                <div>
                    <button type="button" name="editSignature" id="editSignature" class="btn btn-info"><i class="icon-ok bigger-110">
                    </i>Edit</button>
                </div>

            </div>
            <g:form name="retailClientSignature" id="retailClientSignature"
                          method="post" role="form" class="form-horizontal" action="" enctype="multipart/form-data">
                <div class="form-group">
                    <div class="col-sm-12">
                        <input type="file" class="col-xs-10 col-sm-12"
                               id="signature" name="signature" required>
                    </div>
                </div>
                <div>
                    <button type="submit" name="signatureSubmit" id="signatureSubmit" class="btn btn-info"><i class="icon-ok bigger-110">
                    </i>Upload</button>
                </div>
            </g:form>
        </div><!-- /.col -->
    </div>
