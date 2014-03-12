<select class="form-control" name="parentGroup">
    <option value="" selected>-Select-</option>
    <g:each var="chartGroup" in="${chartGroupList}">
        <option value="${chartGroup.id}">${chartGroup.name}</option>
    </g:each>
</select>