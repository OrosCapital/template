<%--
  Created by IntelliJ IDEA.
  User: GS
  Date: 2/23/14
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="oros"> %{--treeMain--}%
    <title>OrosCapital - Client</title>
    %{-- Tree View --}%
    <link rel="stylesheet" href="${resource(dir: 'css/tree',file:'jquery.treeview.css')}" />

    %{--another one css--}%
    <link rel="stylesheet" href="${resource(dir: 'css/tree2',file:'style.css')}" />
</head>

<body>
<div class="page-header">
    <h1>Chart Categories (Treeview)</h1>
</div><!-- /.page-header -->

%{--Message--}%
<g:if test="${flash.success}">
    <div class="alert alert-success">
        ${flash.success}
    </div>
</g:if>

<g:if test="${flash.error}">
    <div class="alert alert-danger">
        ${flash.error}
    </div>
</g:if>
%{-- End --}%

<div class="col-sm-6">
    <div class="widget-box">
        <div class="widget-header header-color-blue2">
            <h4 class="lighter smaller">Chart Class <i class="icon-double-angle-right"></i> Chart Group <i class="icon-double-angle-right"></i> Chart Master</h4>
        </div>

        <div class="widget-body">
            <div class="widget-main padding-8">
                <div id="main">
                    %{--<ul id="navigation">--}%
                    <ul id="navigation">
                        <g:each var="chartClass" in="${chartClassLists}" status="i">
                            <li class="tree-folder-name">
                                %{-- chart class --}%
                                <g:link controller="chartClass" action="edit" id="${chartClass.id}">${chartClass?.name}</g:link>
                                <ul>
                                    <g:each in="${chartClassLists.chartGroups[i]}" var="chartGroup" status="j">
                                    %{--<g:if test="${chartGroup.position == 'parent'}">--}%
                                        <g:if test="${chartGroup.parentGroupId == null}">
                                            <li>%{-- A group --}%
                                            <g:link controller="chartGroup" action="edit" id="${chartGroup.id}">${chartGroup.name}</g:link>
                                                <a href="<g:createLink controller="chartGroup" id="${chartGroup.id}" action="create"/>" class="show-option" title="Add Chart Group" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                <a href="<g:createLink controller="chartMaster" id="${chartGroup.id}" action="create"/>" class="show-option" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                <ul>
                                                    %{-- A1 --}%
                                                    <g:each in="${chartClassLists.chartGroups[i].parentGroups[j]}" var="parentGroup" status="k">
                                                        <li>
                                                            <g:link controller="chartGroup" action="edit" id="${parentGroup.id}">${parentGroup.name}</g:link>
                                                            <a href="<g:createLink controller="chartGroup" id="${parentGroup.id}" action="create"/>" class="show-option" title="Add Chart Group" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                            <a href="<g:createLink controller="chartMaster" id="${parentGroup.id}" action="create"/>" class="show-option" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                            %{-- A2 --}%
                                                            <ul>
                                                                <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k]}" var="parentGrouP" status="n">
                                                                    <li>
                                                                        <g:link controller="chartGroup" action="edit" id="${parentGrouP.id}">${parentGrouP.name}</g:link>
                                                                        <a href="<g:createLink controller="chartGroup" id="${parentGrouP.id}" action="create"/>" class="show-option" title="Add Chart Group" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                        <a href="<g:createLink controller="chartMaster" id="${parentGrouP.id}" action="create"/>" class="show-option" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                        <ul>%{-- A3 group --}%
                                                                            <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n]}" var="parentGroupThird" status="m">
                                                                                <li><g:link controller="chartGroup" action="edit" id="${parentGroupThird.id}">${parentGroupThird.name}</g:link>
                                                                                    <a href="<g:createLink controller="chartGroup" id="${parentGroupThird.id}" action="create"/>" class="show-option" title="Add Chart Group" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                    <a href="<g:createLink controller="chartMaster" id="${parentGroupThird.id}" action="create"/>" class="show-option" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                    <ul>
                                                                                        %{-- A4 group --}%
                                                                                        <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].parentGroups[m]}" var="parentGroupFourth" status="o">
                                                                                            <li>
                                                                                                <g:link controller="chartGroup" action="edit" id="${parentGroupFourth.id}">${parentGroupFourth.name}</g:link>
                                                                                                <a href="<g:createLink controller="chartGroup" id="${parentGroupFourth.id}" action="create"/>" class="show-option" title="Add Chart Group" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                                <a href="<g:createLink controller="chartMaster" id="${parentGroupFourth.id}" action="create"/>" class="show-option" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                                <ul>
                                                                                                    %{-- A5 group --}%
                                                                                                    <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].parentGroups[m].parentGroups[o]}" var="parentGroupFifth" status="p">
                                                                                                        <li>
                                                                                                            <g:link controller="chartGroup" action="edit" id="${parentGroupFifth.id}">${parentGroupFifth.name}</g:link>
                                                                                                            <a href="<g:createLink controller="chartGroup" id="${parentGroupFifth.id}" action="create"/>" class="show-option" title="Add Chart Group" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                                            <a href="<g:createLink controller="chartMaster" id="${parentGroupFifth.id}" action="create"/>" class="show-option" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                                            <ul>
                                                                                                                %{-- A6 group --}%
                                                                                                                <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].parentGroups[m].parentGroups[o].parentGroups[p]}" var="parentGroupSixth" status="q">
                                                                                                                    <li>
                                                                                                                        <g:link controller="chartGroup" action="edit" id="${parentGroupSixth.id}">${parentGroupSixth.name}</g:link>
                                                                                                                        <a href="<g:createLink controller="chartMaster" id="${parentGroupSixth.id}" action="create"/>" class="show-option" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                                                        <ul>
                                                                                                                            %{-- A6 master --}%
                                                                                                                            <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].parentGroups[m].parentGroups[o].parentGroups[p].chartMasters[q]}" var="chartMaster">
                                                                                                                                <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link></li>
                                                                                                                            </g:each>
                                                                                                                        </ul>
                                                                                                                    </li>
                                                                                                                </g:each>
                                                                                                                %{-- A5 master --}%
                                                                                                                <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].parentGroups[m].parentGroups[o].chartMasters[p]}" var="chartMaster">
                                                                                                                    <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link></li>
                                                                                                                </g:each>
                                                                                                            </ul>
                                                                                                        </li>
                                                                                                    </g:each>
                                                                                                    %{-- A4 master --}%
                                                                                                    <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].parentGroups[m].chartMasters[o]}" var="chartMaster">
                                                                                                        <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link></li>
                                                                                                    </g:each>
                                                                                                </ul>
                                                                                            </li>
                                                                                        </g:each>
                                                                                        %{-- A3 master --}%
                                                                                        <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].chartMasters[m]}" var="chartMaster">
                                                                                            <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link></li>
                                                                                        </g:each>
                                                                                    </ul>
                                                                                </li>
                                                                            </g:each>
                                                                            %{-- A2 master --}%
                                                                            <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].chartMasters[n]}" var="chartMaster">
                                                                                <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link></li>
                                                                            </g:each>
                                                                        </ul>
                                                                    </li>
                                                                </g:each>
                                                                %{-- A1 master --}%
                                                                <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].chartMasters[k]}" var="chartMaster">
                                                                    <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link></li>
                                                                </g:each>
                                                            </ul>
                                                        </li>

                                                    </g:each>
                                                    %{-- A master --}%
                                                    <g:each in="${chartClassLists.chartGroups[i].chartMasters[j]}" var="chartMaster">
                                                        <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster.accountantName}</g:link></li>
                                                    </g:each>
                                                </ul>
                                            </li>
                                        </g:if>
                                    </g:each>
                                </ul>
                            </li>
                        </g:each>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</div>

%{-- Another tree --}%
<div class="col-sm-6">
    <div class="widget-box">
        <div class="widget-header header-color-green2">
            <h4 class="lighter smaller">Chart Class <i class="icon-double-angle-right"></i> Chart Group <i class="icon-double-angle-right"></i> Chart Master</h4>
        </div>

        <div class="widget-body">
            <div class="widget-main padding-8">
                <div id="jstree">
                    <!-- in this example the tree is populated from inline HTML -->
                    %{--<ul>
                        <g:each var="chartClass" in="${chartClassLists}" status="i">
                            <li class="tree-folder-name">
                                <g:link controller="chartClass" action="edit" id="${chartClass.id}">${chartClass?.name}</g:link>
                                <ul>
                                    <g:each in="${chartClassLists.chartGroups[i]}" var="chartGroup" status="j">
                                    --}%%{--<g:if test="${chartGroup.position == 'parent'}">--}%%{--
                                        <g:if test="${chartGroup.parentGroupId == null}">
                                            <li>
                                                <g:link controller="chartGroup" action="edit" id="${chartGroup.id}">${chartGroup.name}</g:link>
                                                <ul>
                                                --}%%{-- sub group --}%%{--
                                                    <g:each in="${chartClassLists.chartGroups[i].parentGroups[j]}" var="parentGroup" status="k">
                                                        <li>
                                                            <g:link controller="chartGroup" action="edit" id="${parentGroup.id}">${parentGroup.name}</g:link>
                                                        --}%%{-- sub sub group --}%%{--
                                                            <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k]}" var="parentGrouP" status="n">
                                                                <ul>
                                                                    <li>
                                                                        <g:link controller="chartMaster" action="edit" id="${parentGrouP.id}">${parentGrouP.name}</g:link>
                                                                        <ul>
                                                                        --}%%{-- master --}%%{--
                                                                            <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].chartMasters[n]}" var="chartMaster">
                                                                                <li>
                                                                                    <g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link>
                                                                                </li>
                                                                            </g:each>
                                                                        </ul>
                                                                    </li>
                                                                --}%%{-- master --}%%{--
                                                                    <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].chartMasters[k]}" var="chartMaster">
                                                                        <li>
                                                                            <g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link>
                                                                        </li>
                                                                    </g:each>
                                                                </ul>
                                                            </g:each>


                                                        </li>
                                                    </g:each>
                                                --}%%{-- master --}%%{--
                                                    <g:each in="${chartClassLists.chartGroups[i].chartMasters[j]}" var="chartMaster">
                                                        <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster.accountantName}</g:link></li>
                                                    </g:each>
                                                </ul>
                                            </li>
                                        </g:if>
                                    </g:each>
                                </ul>
                            </li>
                        </g:each>
                    </ul>--}%
                    %{-- 20/03/2014--}%
                    <ul>
                        <g:each var="chartClass" in="${chartClassLists}" status="i">
                            <li class="tree-folder-name">
                                %{-- chart class --}%
                                <g:link controller="chartClass" action="edit" id="${chartClass.id}">${chartClass?.name}</g:link>
                                <ul>
                                    <g:each in="${chartClassLists.chartGroups[i]}" var="chartGroup" status="j">
                                    %{--<g:if test="${chartGroup.position == 'parent'}">--}%
                                        <g:if test="${chartGroup.parentGroupId == null}">
                                            <li>%{-- group --}%
                                            <g:link controller="chartGroup" action="edit" id="${chartGroup.id}">${chartGroup.name}</g:link>
                                                <a href="<g:createLink controller="chartGroup" id="${chartGroup.id}" action="create"/>" title="Add Chart Group" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                <a href="<g:createLink controller="chartMaster" id="${chartGroup.id}" action="create"/>" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                <ul>
                                                    %{-- A1 --}%
                                                    <g:each in="${chartClassLists.chartGroups[i].parentGroups[j]}" var="parentGroup" status="k">
                                                        <li>
                                                            <g:link controller="chartGroup" action="edit" id="${parentGroup.id}">${parentGroup.name}</g:link>
                                                            <a href="<g:createLink controller="chartGroup" id="${parentGroup.id}" action="create"/>" title="Add Chart Group" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                            <a href="<g:createLink controller="chartMaster" id="${parentGroup.id}" action="create"/>" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                            %{-- A2 --}%
                                                            <ul>
                                                                <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k]}" var="parentGrouP" status="n">
                                                                    <li>
                                                                        <g:link controller="chartGroup" action="edit" id="${parentGrouP.id}">${parentGrouP.name}</g:link>
                                                                        <a href="<g:createLink controller="chartGroup" id="${parentGrouP.id}" action="create"/>" title="Add Chart Group" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                        <a href="<g:createLink controller="chartMaster" id="${parentGrouP.id}" action="create"/>" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                        <ul>%{-- A3 group --}%
                                                                            <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n]}" var="parentGroupThird" status="m">
                                                                                <li><g:link controller="chartGroup" action="edit" id="${parentGroupThird.id}">${parentGroupThird.name}</g:link>
                                                                                    <a href="<g:createLink controller="chartGroup" id="${parentGroupThird.id}" action="create"/>" title="Add Chart Group" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                    <a href="<g:createLink controller="chartMaster" id="${parentGroupThird.id}" action="create"/>" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                    <ul>
                                                                                    %{-- A4 group --}%
                                                                                        <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].parentGroups[m]}" var="parentGroupFourth" status="o">
                                                                                            <li>
                                                                                                <g:link controller="chartGroup" action="edit" id="${parentGroupFourth.id}">${parentGroupFourth.name}</g:link>
                                                                                                <a href="<g:createLink controller="chartGroup" id="${parentGroupFourth.id}" action="create"/>" title="Add Chart Group" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                                <a href="<g:createLink controller="chartMaster" id="${parentGroupFourth.id}" action="create"/>" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                                <ul>
                                                                                                %{-- A5 group --}%
                                                                                                    <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].parentGroups[m].parentGroups[o]}" var="parentGroupFifth" status="p">
                                                                                                        <li>
                                                                                                            <g:link controller="chartGroup" action="edit" id="${parentGroupFifth.id}">${parentGroupFifth.name}</g:link>
                                                                                                            <a href="<g:createLink controller="chartGroup" id="${parentGroupFifth.id}" action="create"/>" title="Add Chart Group" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                                            <a href="<g:createLink controller="chartMaster" id="${parentGroupFifth.id}" action="create"/>" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                                            <ul>
                                                                                                            %{-- A6 group --}%
                                                                                                                <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].parentGroups[m].parentGroups[o].parentGroups[p]}" var="parentGroupSixth" status="q">
                                                                                                                    <li>
                                                                                                                        <g:link controller="chartGroup" action="edit" id="${parentGroupSixth.id}">${parentGroupSixth.name}</g:link>
                                                                                                                        <a href="<g:createLink controller="chartGroup" id="${parentGroupSixth.id}" action="create"/>" title="Add Chart Group" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                                                        <a href="<g:createLink controller="chartMaster" id="${parentGroupSixth.id}" action="create"/>" title="Add Chart Master" class="inline"><span class="glyphicon glyphicon-plus"></span></a>
                                                                                                                        <ul>
                                                                                                                        %{-- A6 master --}%
                                                                                                                            <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].parentGroups[m].parentGroups[o].parentGroups[p].chartMasters[q]}" var="chartMaster">
                                                                                                                                <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link></li>
                                                                                                                            </g:each>
                                                                                                                        </ul>
                                                                                                                    </li>
                                                                                                                </g:each>
                                                                                                            %{-- A5 master --}%
                                                                                                                <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].parentGroups[m].parentGroups[o].chartMasters[p]}" var="chartMaster">
                                                                                                                    <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link></li>
                                                                                                                </g:each>
                                                                                                            </ul>
                                                                                                        </li>
                                                                                                    </g:each>
                                                                                                %{-- A4 master --}%
                                                                                                    <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].parentGroups[m].chartMasters[o]}" var="chartMaster">
                                                                                                        <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link></li>
                                                                                                    </g:each>
                                                                                                </ul>
                                                                                            </li>
                                                                                        </g:each>
                                                                                    %{-- A3 master --}%
                                                                                        <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].parentGroups[n].chartMasters[m]}" var="chartMaster">
                                                                                            <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link></li>
                                                                                        </g:each>
                                                                                    </ul>
                                                                                </li>
                                                                            </g:each>
                                                                        %{-- A2 master --}%
                                                                            <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].parentGroups[k].chartMasters[n]}" var="chartMaster">
                                                                                <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link></li>
                                                                            </g:each>
                                                                        </ul>
                                                                    </li>
                                                                %{-- A1 master --}%
                                                                    <g:each in="${chartClassLists.chartGroups[i].parentGroups[j].chartMasters[k]}" var="chartMaster">
                                                                        <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster?.accountantName}</g:link></li>
                                                                    </g:each>
                                                                </g:each>
                                                            </ul>
                                                        </li>
                                                    </g:each>
                                                    %{-- A master --}%
                                                    <g:each in="${chartClassLists.chartGroups[i].chartMasters[j]}" var="chartMaster">
                                                        <li><g:link controller="chartMaster" action="edit" id="${chartMaster.id}">${chartMaster.accountantName}</g:link></li>
                                                    </g:each>
                                                </ul>
                                            </li>
                                        </g:if>
                                    </g:each>
                                </ul>
                            </li>
                        </g:each>
                    </ul>

                </div>
            </div>
        </div>
    </div>
</div>

<script src="${resource(dir: 'js/tree2',file:'jquery.js')}"></script>
<script src="${resource(dir: 'js/tree2',file:'jstree.js')}"></script>
<script>
    var wr = $.noConflict();
    wr(function () {
        // 6 create an instance when the DOM is ready
        wr('#jstree').jstree();
        // 7 bind to events triggered on the tree

    });
</script>
%{-- end here --}%
    <r:script>

        $(function() {
            $( ".show-option").tooltip({
                show: {
                    effect: "slideDown",
                    delay: 300
                }
            })
        });
    </r:script>



<script src="${resource(dir: 'js/tree', file:'jquery.js')}" type="text/javascript"></script>
%{-- Use for Tree View --}%
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
%{-- End --}%
<script src="${resource(dir: 'js/tree', file: 'jquery.cookie.js')}" type="text/javascript"></script>
<script src="${resource(dir: 'js/tree', file: 'jquery.treeview.js')}" type="text/javascript"></script>
<script type="text/javascript" src="${resource(dir: 'js/tree', file: 'demo.js')}"></script>


%{-- main tree viwe--}%

</body>
</html>