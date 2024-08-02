/**
 * Highcharts Gantt JS v11.2.0 (2023-10-30)
 *
 * Tree Grid
 *
 * (c) 2016-2021 Jon Arild Nygard
 *
 * License: www.highcharts.com/license
 */!function(t){"object"==typeof module&&module.exports?(t.default=t,module.exports=t):"function"==typeof define&&define.amd?define("highcharts/modules/treegrid",["highcharts"],function(e){return t(e),t.Highcharts=e,t}):t("undefined"!=typeof Highcharts?Highcharts:void 0)}(function(t){"use strict";var e=t?t._modules:{};function i(t,e,i,r){t.hasOwnProperty(e)||(t[e]=r.apply(null,i),"function"==typeof CustomEvent&&window.dispatchEvent(new CustomEvent("HighchartsModuleLoaded",{detail:{path:e,module:t[e]}})))}i(e,"Core/Axis/BrokenAxis.js",[e["Core/Axis/Stacking/StackItem.js"],e["Core/Utilities.js"]],function(t,e){var i,r=e.addEvent,s=e.find,o=e.fireEvent,n=e.isArray,a=e.isNumber,l=e.pick;return function(i){var d=[];function h(){void 0!==this.brokenAxis&&this.brokenAxis.setBreaks(this.options.breaks,!1)}function c(){var t;(null===(t=this.brokenAxis)||void 0===t?void 0:t.hasBreaks)&&(this.options.ordinal=!1)}function p(){var t=this.brokenAxis;if(null==t?void 0:t.hasBreaks){for(var e=this.tickPositions,i=this.tickPositions.info,r=[],s=0;s<e.length;s++)t.isInAnyBreak(e[s])||r.push(e[s]);this.tickPositions=r,this.tickPositions.info=i}}function u(){this.brokenAxis||(this.brokenAxis=new k(this))}function f(){var t,e,i=this.isDirty,r=this.options.connectNulls,s=this.points,o=this.xAxis,n=this.yAxis;if(i)for(var a=s.length;a--;){var l=s[a],d=!(null===l.y&&!1===r)&&((null===(t=null==o?void 0:o.brokenAxis)||void 0===t?void 0:t.isInAnyBreak(l.x,!0))||(null===(e=null==n?void 0:n.brokenAxis)||void 0===e?void 0:e.isInAnyBreak(l.y,!0)));l.visible=!d&&!1!==l.options.visible}}function v(){this.drawBreaks(this.xAxis,["x"]),this.drawBreaks(this.yAxis,l(this.pointArrayMap,["y"]))}function g(t,e){var i,r,s,n,d=this,h=d.points;if(null===(i=null==t?void 0:t.brokenAxis)||void 0===i?void 0:i.hasBreaks){var c=t.brokenAxis;e.forEach(function(e){r=(null==c?void 0:c.breakArray)||[],s=t.isXAxis?t.min:l(d.options.threshold,t.min);var i,p,u=null===(p=null===(i=null==t?void 0:t.options)||void 0===i?void 0:i.breaks)||void 0===p?void 0:p.filter(function(t){for(var e=!0,i=0;i<r.length;i++){var s=r[i];if(s.from===t.from&&s.to===t.to){e=!1;break}}return e});h.forEach(function(i){n=l(i["stack"+e.toUpperCase()],i[e]),r.forEach(function(e){if(a(s)&&a(n)){var r="";s<e.from&&n>e.to||s>e.from&&n<e.from?r="pointBreak":(s<e.from&&n>e.from&&n<e.to||s>e.from&&n>e.to&&n<e.from)&&(r="pointInBreak"),r&&o(t,r,{point:i,brk:e})}}),null==u||u.forEach(function(e){o(t,"pointOutsideOfBreak",{point:i,brk:e})})})})}}function m(){var e=this.currentDataGrouping,i=null==e?void 0:e.gapSize,r=this.points.slice(),s=this.yAxis,o=this.options.gapSize,n=r.length-1;if(o&&n>0){"value"!==this.options.gapUnit&&(o*=this.basePointRange),i&&i>o&&i>=this.basePointRange&&(o=i);for(var a=void 0,l=void 0;n--;)if(l&&!1!==l.visible||(l=r[n+1]),a=r[n],!1!==l.visible&&!1!==a.visible){if(l.x-a.x>o){var d=(a.x+l.x)/2;r.splice(n+1,0,{isNull:!0,x:d}),s.stacking&&this.options.stacking&&((s.stacking.stacks[this.stackKey][d]=new t(s,s.options.stackLabels,!1,d,this.stack)).total=0)}l=a}}return this.getGraphPath(r)}i.compose=function(t,i){if(e.pushUnique(d,t)&&(t.keepProps.push("brokenAxis"),r(t,"init",u),r(t,"afterInit",h),r(t,"afterSetTickPositions",p),r(t,"afterSetOptions",c)),e.pushUnique(d,i)){var s=i.prototype;s.drawBreaks=g,s.gappedPath=m,r(i,"afterGeneratePoints",f),r(i,"afterRender",v)}return t};var k=function(){function t(t){this.hasBreaks=!1,this.axis=t}return t.isInBreak=function(t,e){var i=t.repeat||1/0,r=t.from,s=t.to-t.from,o=e>=r?(e-r)%i:i-(r-e)%i;return t.inclusive?o<=s:o<s&&0!==o},t.lin2Val=function(e){var i=this.brokenAxis,r=i&&i.breakArray;if(!r||!a(e))return e;var s,o,n=e;for(o=0;o<r.length&&!((s=r[o]).from>=n);o++)s.to<n?n+=s.len:t.isInBreak(s,n)&&(n+=s.len);return n},t.val2Lin=function(e){var i=this.brokenAxis,r=i&&i.breakArray;if(!r||!a(e))return e;var s,o,n=e;for(o=0;o<r.length;o++)if((s=r[o]).to<=e)n-=s.len;else if(s.from>=e)break;else if(t.isInBreak(s,e)){n-=e-s.from;break}return n},t.prototype.findBreakAt=function(t,e){return s(e,function(e){return e.from<t&&t<e.to})},t.prototype.isInAnyBreak=function(e,i){var r,s,o,n=this.axis,d=n.options.breaks||[],h=d.length;if(h&&a(e)){for(;h--;)t.isInBreak(d[h],e)&&(r=!0,s||(s=l(d[h].showPoints,!n.isXAxis)));o=r&&i?r&&!s:r}return o},t.prototype.setBreaks=function(e,i){var r=this,s=r.axis,d=n(e)&&!!e.length&&!!Object.keys(e[0]).length;s.isDirty=r.hasBreaks!==d,r.hasBreaks=d,e!==s.options.breaks&&(s.options.breaks=s.userOptions.breaks=e),s.forceRedraw=!0,s.series.forEach(function(t){t.isDirty=!0}),d||s.val2lin!==t.val2Lin||(delete s.val2lin,delete s.lin2val),d&&(s.userOptions.ordinal=!1,s.lin2val=t.lin2Val,s.val2lin=t.val2Lin,s.setExtremes=function(t,e,i,o,n){if(r.hasBreaks){for(var a=this.options.breaks||[],l=void 0;l=r.findBreakAt(t,a);)t=l.to;for(;l=r.findBreakAt(e,a);)e=l.from;e<t&&(e=t)}s.constructor.prototype.setExtremes.call(this,t,e,i,o,n)},s.setAxisTranslation=function(){if(s.constructor.prototype.setAxisTranslation.call(this),r.unitLength=void 0,r.hasBreaks){var e,i,n,d,h=s.options.breaks||[],c=[],p=[],u=l(s.pointRangePadding,0),f=0,v=s.userMin||s.min,g=s.userMax||s.max;h.forEach(function(e){i=e.repeat||1/0,a(v)&&a(g)&&(t.isInBreak(e,v)&&(v+=e.to%i-v%i),t.isInBreak(e,g)&&(g-=g%i-e.from%i))}),h.forEach(function(t){if(n=t.from,i=t.repeat||1/0,a(v)&&a(g)){for(;n-i>v;)n-=i;for(;n<v;)n+=i;for(d=n;d<g;d+=i)c.push({value:d,move:"in"}),c.push({value:d+t.to-t.from,move:"out",size:t.breakSize})}}),c.sort(function(t,e){return t.value===e.value?("in"===t.move?0:1)-("in"===e.move?0:1):t.value-e.value}),e=0,n=v,c.forEach(function(t){1===(e+="in"===t.move?1:-1)&&"in"===t.move&&(n=t.value),0===e&&a(n)&&(p.push({from:n,to:t.value,len:t.value-n-(t.size||0)}),f+=t.value-n-(t.size||0))}),r.breakArray=p,a(v)&&a(g)&&a(s.min)&&(r.unitLength=g-v-f+u,o(s,"afterBreaks"),s.staticScale?s.transA=s.staticScale:r.unitLength&&(s.transA*=(g-s.min+u)/r.unitLength),u&&(s.minPixelPadding=s.transA*(s.minPointOffset||0)),s.min=v,s.max=g)}}),l(i,!0)&&s.chart.redraw()},t}();i.Additions=k}(i||(i={})),i}),i(e,"Core/Axis/GridAxis.js",[e["Core/Axis/Axis.js"],e["Core/Globals.js"],e["Core/Utilities.js"]],function(t,e,i){var r,s,o=e.dateFormats,n=i.addEvent,a=i.defined,l=i.erase,d=i.find,h=i.isArray,c=i.isNumber,p=i.merge,u=i.pick,f=i.timeUnits,v=i.wrap;(r=s||(s={}))[r.top=0]="top",r[r.right=1]="right",r[r.bottom=2]="bottom",r[r.left=3]="left";var g=[];function m(t){return i.isObject(t,!0)}function k(t,e){var i={width:0,height:0};if(e.forEach(function(e){var r,s=t[e],o=0,n=0;m(s)&&(o=(r=m(s.label)?s.label:{}).getBBox?r.getBBox().height:0,r.textStr&&!c(r.textPxLength)&&(r.textPxLength=r.getBBox().width),n=c(r.textPxLength)?Math.round(r.textPxLength):0,r.textStr&&(n=Math.round(r.getBBox().width)),i.height=Math.max(o,i.height),i.width=Math.max(n,i.width))}),"treegrid"===this.options.type&&this.treeGrid&&this.treeGrid.mapOfPosToGridNode){var r=this.treeGrid.mapOfPosToGridNode[-1].height||0;i.width+=this.options.labels.indentation*(r-1)}return i}function x(){var t=this.grid;(t&&t.columns||[]).forEach(function(t){t.getOffset()})}function b(t){if(!0===(this.options.grid||{}).enabled){var e=this.axisTitle,i=this.height,r=this.horiz,o=this.left,n=this.offset,a=this.opposite,l=this.options,d=this.top,h=this.width,c=this.tickSize(),p=e&&e.getBBox().width,f=l.title.x,v=l.title.y,g=u(l.title.margin,r?5:10),m=e?this.chart.renderer.fontMetrics(e).f:0,k=(r?d+i:o)+(r?1:-1)*(a?-1:1)*(c?c[0]/2:0)+(this.side===s.bottom?m:0);t.titlePosition.x=r?o-(p||0)/2-g+f:k+(a?h:0)+n+f,t.titlePosition.y=r?k-(a?i:0)+(a?m:-m)/2+n+v:d-g+v}}function y(){var e,i=this.chart,r=this.options.grid,s=void 0===r?{}:r,o=this.userOptions;if(s.enabled&&((e=this.options).labels.align=u(e.labels.align,"center"),this.categories||(e.showLastLabel=!1),this.labelRotation=0,e.labels.rotation=0,e.minTickInterval=1),s.columns)for(var n=this.grid.columns=[],a=this.grid.columnIndex=0;++a<s.columns.length;){var d=p(o,s.columns[s.columns.length-a-1],{isInternal:!0,linkedTo:0,type:"category",scrollbar:{enabled:!1}});delete d.grid.columns;var h=new t(this.chart,d,"yAxis");h.grid.isColumn=!0,h.grid.columnIndex=a,l(i.axes,h),l(i[this.coll]||[],h),n.push(h)}}function G(){var t=this.grid,e=this.options;if(!0===(e.grid||{}).enabled){var i=this.min||0,r=this.max||0;if(this.maxLabelDimensions=this.getMaxLabelDimensions(this.ticks,this.tickPositions),this.rightWall&&this.rightWall.destroy(),this.grid&&this.grid.isOuterAxis()&&this.axisLine){var o=e.lineWidth;if(o){var n=this.getLinePath(o),a=n[0],l=n[1],d=((this.tickSize("tick")||[1])[0]-1)*(this.side===s.top||this.side===s.left?-1:1);if("M"===a[0]&&"L"===l[0]&&(this.horiz?(a[2]+=d,l[2]+=d):(a[1]+=d,l[1]+=d)),!this.horiz&&this.chart.marginRight){var h=["L",this.left,a[2]||0],c=[a,h],p=["L",this.chart.chartWidth-this.chart.marginRight,this.toPixels(r+this.tickmarkOffset)],u=[["M",l[1]||0,this.toPixels(r+this.tickmarkOffset)],p];this.grid.upperBorder||i%1==0||(this.grid.upperBorder=this.grid.renderBorder(c)),this.grid.upperBorder&&(this.grid.upperBorder.attr({stroke:e.lineColor,"stroke-width":e.lineWidth}),this.grid.upperBorder.animate({d:c})),this.grid.lowerBorder||r%1==0||(this.grid.lowerBorder=this.grid.renderBorder(u)),this.grid.lowerBorder&&(this.grid.lowerBorder.attr({stroke:e.lineColor,"stroke-width":e.lineWidth}),this.grid.lowerBorder.animate({d:u}))}this.grid.axisLineExtra?(this.grid.axisLineExtra.attr({stroke:e.lineColor,"stroke-width":e.lineWidth}),this.grid.axisLineExtra.animate({d:n})):this.grid.axisLineExtra=this.grid.renderBorder(n),this.axisLine[this.showAxis?"show":"hide"]()}}if((t&&t.columns||[]).forEach(function(t){return t.render()}),!this.horiz&&this.chart.hasRendered&&(this.scrollbar||this.linkedParent&&this.linkedParent.scrollbar)){for(var f=this.tickmarkOffset,v=this.tickPositions[this.tickPositions.length-1],g=this.tickPositions[0],m=void 0,k=void 0;(m=this.hiddenLabels.pop())&&m.element;)m.show();for(;(k=this.hiddenMarks.pop())&&k.element;)k.show();(m=this.ticks[g].label)&&(i-g>f?this.hiddenLabels.push(m.hide()):m.show()),(m=this.ticks[v].label)&&(v-r>f?this.hiddenLabels.push(m.hide()):m.show());var x=this.ticks[v].mark;x&&v-r<f&&v-r>0&&this.ticks[v].isLast&&this.hiddenMarks.push(x.hide())}}}function P(){var t=this.tickPositions&&this.tickPositions.info,e=this.options,i=e.grid||{},r=this.userOptions.labels||{};i.enabled&&(this.horiz?(this.series.forEach(function(t){t.options.pointRange=0}),t&&e.dateTimeLabelFormats&&e.labels&&!a(r.align)&&(!1===e.dateTimeLabelFormats[t.unitName].range||t.count>1)&&(e.labels.align="left",a(r.x)||(e.labels.x=3))):"treegrid"!==this.options.type&&this.grid&&this.grid.columns&&(this.minPointOffset=this.tickInterval))}function A(t){var e,i=this.options,r=t.userOptions,s=i&&m(i.grid)?i.grid:{};!0===s.enabled&&(e=p(!0,{className:"highcharts-grid-axis "+(r.className||""),dateTimeLabelFormats:{hour:{list:["%H:%M","%H"]},day:{list:["%A, %e. %B","%a, %e. %b","%E"]},week:{list:["Week %W","W%W"]},month:{list:["%B","%b","%o"]}},grid:{borderWidth:1},labels:{padding:2,style:{fontSize:"0.9em"}},margin:0,title:{text:null,reserveSpace:!1,rotation:0},units:[["millisecond",[1,10,100]],["second",[1,10]],["minute",[1,5,15]],["hour",[1,6]],["day",[1]],["week",[1]],["month",[1]],["year",null]]},r),"xAxis"===this.coll&&(a(r.linkedTo)&&!a(r.tickPixelInterval)&&(e.tickPixelInterval=350),!a(r.tickPixelInterval)&&a(r.linkedTo)&&!a(r.tickPositioner)&&!a(r.tickInterval)&&(e.tickPositioner=function(t,i){var r=this.linkedParent&&this.linkedParent.tickPositions&&this.linkedParent.tickPositions.info;if(r){for(var s=e.units||[],o=void 0,n=1,a="year",l=0;l<s.length;l++){var d=s[l];if(d&&d[0]===r.unitName){o=l;break}}var h=c(o)&&s[o+1];if(h){a=h[0]||"year";var p=h[1];n=p&&p[0]||1}else"year"===r.unitName&&(n=10*r.count);var u=f[a];return this.tickInterval=u*n,this.chart.time.getTimeTicks({unitRange:u,count:n,unitName:a},t,i,this.options.startOfWeek)}})),p(!0,this.options,e),this.horiz&&(i.minPadding=u(r.minPadding,0),i.maxPadding=u(r.maxPadding,0)),c(i.grid.borderWidth)&&(i.tickWidth=i.lineWidth=s.borderWidth))}function T(t){var e=t.userOptions,i=e&&e.grid||{},r=i.columns;i.enabled&&r&&p(!0,this.options,r[r.length-1])}function O(){(this.grid.columns||[]).forEach(function(t){return t.setScale()})}function B(t){var e=this.horiz,i=this.maxLabelDimensions,r=this.options.grid,s=void 0===r?{}:r;if(s.enabled&&i){var o=2*this.options.labels.distance,n=e?s.cellHeight||o+i.height:o+i.width;h(t.tickSize)?t.tickSize[0]=n:t.tickSize=[n,0]}}function C(){this.axes.forEach(function(t){(t.grid&&t.grid.columns||[]).forEach(function(t){t.setAxisSize(),t.setAxisTranslation()})})}function w(t){var e=this.grid;(e.columns||[]).forEach(function(e){return e.destroy(t.keepEvents)}),e.columns=void 0}function I(t){var e=t.userOptions||{},i=e.grid||{};i.enabled&&a(i.borderColor)&&(e.tickColor=e.lineColor=i.borderColor),this.grid||(this.grid=new M(this)),this.hiddenLabels=[],this.hiddenMarks=[]}function N(t){var e=this.label,i=this.axis,r=i.reversed,o=i.chart,n=i.options.grid||{},a=i.options.labels,l=a.align,d=s[i.side],h=t.tickmarkOffset,p=i.tickPositions,u=this.pos-h,f=c(p[t.index+1])?p[t.index+1]-h:(i.max||0)+h,v=i.tickSize("tick"),g=v?v[0]:0,m=v?v[1]/2:0;if(!0===n.enabled){var k,x=void 0,b=void 0,y=void 0;if("top"===d?k=(x=i.top+i.offset)-g:"bottom"===d?x=(k=o.chartHeight-i.bottom+i.offset)+g:(x=i.top+i.len-(i.translate(r?f:u)||0),k=i.top+i.len-(i.translate(r?u:f)||0)),"right"===d?y=(b=o.chartWidth-i.right+i.offset)+g:"left"===d?b=(y=i.left+i.offset)-g:(b=Math.round(i.left+(i.translate(r?f:u)||0))-m,y=Math.min(Math.round(i.left+(i.translate(r?u:f)||0))-m,i.left+i.len)),this.slotWidth=y-b,t.pos.x="left"===l?b:"right"===l?y:b+(y-b)/2,t.pos.y=k+(x-k)/2,e){var G=o.renderer.fontMetrics(e),P=e.getBBox().height;if(a.useHTML)t.pos.y+=G.b+-(P/2);else{var A=Math.round(P/G.h);t.pos.y+=(G.b-(G.h-G.f))/2+-((A-1)*G.h/2)}}t.pos.x+=i.horiz&&a.x||0}}function E(t){var i=t.axis,r=t.value;if(i.options.grid&&i.options.grid.enabled){var s=i.tickPositions,o=(i.linkedParent||i).series[0],n=r===s[0],a=r===s[s.length-1],l=o&&d(o.options.data,function(t){return t[i.isXAxis?"x":"y"]===r}),h=void 0;l&&o.is("gantt")&&(h=p(l),e.seriesTypes.gantt.prototype.pointClass.setGanttPointAliases(h)),t.isFirst=n,t.isLast=a,t.point=h}}function L(){var t=this.options,e=t.grid||{},i=this.categories,r=this.tickPositions,s=r[0],o=r[r.length-1],n=this.linkedParent&&this.linkedParent.min,a=this.linkedParent&&this.linkedParent.max,l=n||this.min,d=a||this.max,h=this.tickInterval;!0===e.enabled&&!i&&(this.horiz||this.isLinked)&&(s<l&&s+h>l&&!t.startOnTick&&(r[0]=l),o>d&&o-h<d&&!t.endOnTick&&(r[r.length-1]=d))}function S(t){var e,i=this.options.grid;return!0===(void 0===i?{}:i).enabled&&this.categories?this.tickInterval:t.apply(this,(e=arguments,Array.prototype.slice.call(e,1)))}var M=function(){function t(t){this.axis=t}return t.prototype.isOuterAxis=function(){var t=this.axis,e=t.chart,i=t.grid.columnIndex,r=t.linkedParent&&t.linkedParent.grid.columns||t.grid.columns,s=i?t.linkedParent:t,o=-1,n=0;return(e[t.coll]||[]).forEach(function(e,i){e.side!==t.side||e.options.isInternal||(n=i,e!==s||(o=i))}),n===o&&(!c(i)||r.length===i)},t.prototype.renderBorder=function(t){var e=this.axis,i=e.chart.renderer,r=e.options,s=i.path(t).addClass("highcharts-axis-line").add(e.axisBorder);return i.styledMode||s.attr({stroke:r.lineColor,"stroke-width":r.lineWidth,zIndex:7}),s},t}();return o.E=function(t){return this.dateFormat("%a",t,!0).charAt(0)},o.W=function(t){var e=this,i=new this.Date(t);["Hours","Milliseconds","Minutes","Seconds"].forEach(function(t){e.set(t,i,0)});var r=(this.get("Day",i)+6)%7,s=new this.Date(i.valueOf());this.set("Date",s,this.get("Date",i)-r+3);var o=new this.Date(this.get("FullYear",s),0,1);return 4!==this.get("Day",o)&&(this.set("Month",i,0),this.set("Date",i,1+(11-this.get("Day",o))%7)),(1+Math.floor((s.valueOf()-o.valueOf())/6048e5)).toString()},{compose:function(t,e,r){return i.pushUnique(g,t)&&(t.keepProps.push("grid"),t.prototype.getMaxLabelDimensions=k,v(t.prototype,"unsquish",S),n(t,"init",I),n(t,"afterGetOffset",x),n(t,"afterGetTitlePosition",b),n(t,"afterInit",y),n(t,"afterRender",G),n(t,"afterSetAxisTranslation",P),n(t,"afterSetOptions",A),n(t,"afterSetOptions",T),n(t,"afterSetScale",O),n(t,"afterTickSize",B),n(t,"trimTicks",L),n(t,"destroy",w)),i.pushUnique(g,e)&&n(e,"afterSetChartSize",C),i.pushUnique(g,r)&&(n(r,"afterGetLabelPosition",N),n(r,"labelFormat",E)),t}}}),i(e,"Gantt/Tree.js",[e["Core/Utilities.js"]],function(t){var e=t.extend,i=t.isNumber,r=t.pick;function s(t,o,n,a,l,d){var h,c,p=d&&d.after,u=d&&d.before,f={data:a,depth:n-1,id:t,level:n,parent:o||""},v=0,g=0;"function"==typeof u&&u(f,d);var m=(l[t]||[]).map(function(e){var r=s(e.id,t,n+1,e,l,d),o=e.start||NaN,a=!0===e.milestone?o:e.end||NaN;return h=!i(h)||o<h?o:h,c=!i(c)||a>c?a:c,v=v+1+r.descendants,g=Math.max(r.height+1,g),r});return a&&(a.start=r(a.start,h),a.end=r(a.end,c)),e(f,{children:m,descendants:v,height:g}),"function"==typeof p&&p(f,d),f}return{getNode:s,getTree:function(t,e){return s("",null,1,null,t.reduce(function(t,e){var i=r(e.parent,"");return void 0===t[i]&&(t[i]=[]),t[i].push(e),t},{}),e)}}}),i(e,"Core/Axis/TreeGrid/TreeGridTick.js",[e["Core/Utilities.js"]],function(t){var e=t.addEvent,i=t.isObject,r=t.isNumber,s=t.pick,o=t.wrap,n=[];function a(){this.treeGrid||(this.treeGrid=new h(this))}function l(t,e,o,n,a,l,d,h,c){var p,u,f,v,g,m=s(this.options&&this.options.labels,l),k=this.pos,x=this.axis,b="treegrid"===x.options.type,y=t.apply(this,[e,o,n,a,m,d,h,c]);return b&&(p=m&&i(m.symbol,!0)?m.symbol:{},u=m&&r(m.indentation)?m.indentation:0,g=(v=(f=x.treeGrid.mapOfPosToGridNode)&&f[k])&&v.depth||1,y.x+=(p.width||0)+2*(p.padding||0)+(g-1)*u),y}function d(t){var o,n,a,l,d,h,c,p,u,f,v,g,m,k,x,b=this,y=b.pos,G=b.axis,P=b.label,A=G.treeGrid.mapOfPosToGridNode,T=G.options,O=s(b.options&&b.options.labels,T&&T.labels),B=O&&i(O.symbol,!0)?O.symbol:{},C=A&&A[y],w=C&&C.depth,I="treegrid"===T.type,N=G.tickPositions.indexOf(y)>-1,E="highcharts-treegrid-node-",L=G.chart.styledMode;I&&C&&P&&P.element&&P.addClass(E+"level-"+w),t.apply(b,Array.prototype.slice.call(arguments,1)),I&&P&&P.element&&C&&C.descendants&&C.descendants>0&&(m=G.treeGrid.isCollapsed(C),o={color:!L&&P.styles&&P.styles.color||"",collapsed:m,group:P.parentGroup,options:B,renderer:P.renderer,show:N,xy:P.xy},a=!(n=b.treeGrid).labelIcon,l=o.renderer,d=o.xy,c=(h=o.options).width||0,p=h.height||0,u={x:d.x-c/2-(h.padding||0),y:d.y-p/2},f=o.collapsed?90:180,v=o.show&&r(u.y),(g=n.labelIcon)||(n.labelIcon=g=l.path(l.symbols[h.type](h.x||0,h.y||0,c,p)).addClass("highcharts-label-icon").add(o.group)),g[v?"show":"hide"](),l.styledMode||g.attr({cursor:"pointer",fill:s(o.color,"#666666"),"stroke-width":1,stroke:h.lineColor,strokeWidth:h.lineWidth||0}),g[a?"attr":"animate"]({translateX:u.x,translateY:u.y,rotation:f}),k=E+(m?"collapsed":"expanded"),x=E+(m?"expanded":"collapsed"),P.addClass(k).removeClass(x),L||P.css({cursor:"pointer"}),[P,b.treeGrid.labelIcon].forEach(function(t){t&&!t.attachedTreeGridEvents&&(e(t.element,"mouseover",function(){P.addClass("highcharts-treegrid-node-active"),P.renderer.styledMode||P.css({textDecoration:"underline"})}),e(t.element,"mouseout",function(){var t;t=i(O.style)?O.style:{},P.removeClass("highcharts-treegrid-node-active"),P.renderer.styledMode||P.css({textDecoration:t.textDecoration})}),e(t.element,"click",function(){b.treeGrid.toggleCollapse()}),t.attachedTreeGridEvents=!0)}))}var h=function(){function i(t){this.tick=t}return i.compose=function(i){t.pushUnique(n,i)&&(e(i,"init",a),o(i.prototype,"getLabelPosition",l),o(i.prototype,"renderLabel",d),i.prototype.collapse=function(t){this.treeGrid.collapse(t)},i.prototype.expand=function(t){this.treeGrid.expand(t)},i.prototype.toggleCollapse=function(t){this.treeGrid.toggleCollapse(t)})},i.prototype.collapse=function(t){var e=this.tick,i=e.axis,r=i.brokenAxis;if(r&&i.treeGrid.mapOfPosToGridNode){var o=e.pos,n=i.treeGrid.mapOfPosToGridNode[o],a=i.treeGrid.collapse(n);r.setBreaks(a,s(t,!0))}},i.prototype.destroy=function(){this.labelIcon&&this.labelIcon.destroy()},i.prototype.expand=function(t){var e=this.tick,i=e.axis,r=i.brokenAxis;if(r&&i.treeGrid.mapOfPosToGridNode){var o=e.pos,n=i.treeGrid.mapOfPosToGridNode[o],a=i.treeGrid.expand(n);r.setBreaks(a,s(t,!0))}},i.prototype.toggleCollapse=function(t){var e=this.tick,i=e.axis,r=i.brokenAxis;if(r&&i.treeGrid.mapOfPosToGridNode){var o=e.pos,n=i.treeGrid.mapOfPosToGridNode[o],a=i.treeGrid.toggleCollapse(n);r.setBreaks(a,s(t,!0))}},i}();return h}),i(e,"Series/TreeUtilities.js",[e["Core/Color/Color.js"],e["Core/Utilities.js"]],function(t,e){var i=e.extend,r=e.isArray,s=e.isNumber,o=e.isObject,n=e.merge,a=e.pick;return{getColor:function(e,i){var r,s,o,n,l,d,h,c=i.index,p=i.mapOptionsToLevel,u=i.parentColor,f=i.parentColorIndex,v=i.series,g=i.colors,m=i.siblings,k=v.points,x=v.chart.options.chart;return e&&(s=k[e.i],o=p[e.level]||{},s&&o.colorByPoint&&(l=s.index%(g?g.length:x.colorCount),n=g&&g[l]),v.chart.styledMode||(d=a(s&&s.options.color,o&&o.color,n,u&&((r=o&&o.colorVariation)&&"brightness"===r.key&&c&&m?t.parse(u).brighten(r.to*(c/m)).get():u),v.color)),h=a(s&&s.options.colorIndex,o&&o.colorIndex,l,f,i.colorIndex)),{color:d,colorIndex:h}},getLevelOptions:function(t){var e,i,l,d,h,c,p={};if(o(t))for(d=s(t.from)?t.from:1,c=t.levels,i={},e=o(t.defaults)?t.defaults:{},r(c)&&(i=c.reduce(function(t,i){var r,l,h;return o(i)&&s(i.level)&&(l=a((h=n({},i)).levelIsConstant,e.levelIsConstant),delete h.levelIsConstant,delete h.level,o(t[r=i.level+(l?0:d-1)])?n(!0,t[r],h):t[r]=h),t},{})),h=s(t.to)?t.to:1,l=0;l<=h;l++)p[l]=n({},e,o(i[l])?i[l]:{});return p},setTreeValues:function t(e,r){var s=r.before,o=r.idRoot,n=r.mapIdToNode[o],l=!1!==r.levelIsConstant,d=r.points[e.i],h=d&&d.options||{},c=[],p=0;e.levelDynamic=e.level-(l?0:n.level),e.name=a(d&&d.name,""),e.visible=o===e.id||!0===r.visible,"function"==typeof s&&(e=s(e,r)),e.children.forEach(function(s,o){var n=i({},r);i(n,{index:o,siblings:e.children.length,visible:e.visible}),s=t(s,n),c.push(s),s.visible&&(p+=s.val)});var u=a(h.value,p);return e.visible=u>=0&&(p>0||e.visible),e.children=c,e.childrenTotal=p,e.isLeaf=e.visible&&!p,e.val=u,e},updateRootId:function(t){var e,i;return o(t)&&(i=o(t.options)?t.options:{},e=a(t.rootNode,i.rootId,""),o(t.userOptions)&&(t.userOptions.rootId=e),t.rootNode=e),e}}}),i(e,"Core/Axis/TreeGrid/TreeGridAxis.js",[e["Core/Axis/BrokenAxis.js"],e["Core/Axis/GridAxis.js"],e["Gantt/Tree.js"],e["Core/Axis/TreeGrid/TreeGridTick.js"],e["Series/TreeUtilities.js"],e["Core/Utilities.js"]],function(t,e,i,r,s,o){var n,a=s.getLevelOptions,l=o.addEvent,d=o.find,h=o.fireEvent,c=o.isArray,p=o.isObject,u=o.isString,f=o.merge,v=o.pick,g=o.wrap,m=[];function k(t,e){var i=t.collapseEnd||0,r=t.collapseStart||0;return i>=e&&(r-=.5),{from:r,to:i,showPoints:!1}}function x(t,e,r){var s,o,n=[],a=[],l={},h="boolean"==typeof e&&e,c={},f=-1,v=i.getTree(t,{after:function(t){var e=c[t.pos],i=0,r=0;e.children.forEach(function(t){r+=(t.descendants||0)+1,i=Math.max((t.height||0)+1,i)}),e.descendants=r,e.height=i,e.collapsed&&a.push(e)},before:function(t){var e,i,r=p(t.data,!0)?t.data:{},s=u(r.name)?r.name:"",o=l[t.parent],a=p(o,!0)?c[o.pos]:null;h&&p(a,!0)&&(e=d(a.children,function(t){return t.name===s}))?(i=e.pos,e.nodes.push(t)):i=f++,!c[i]&&(c[i]=e={depth:a?a.depth+1:0,name:s,id:r.id,nodes:[t],children:[],pos:i},-1!==i&&n.push(s),p(a,!0)&&a.children.push(e)),u(t.id)&&(l[t.id]=t),e&&!0===r.collapsed&&(e.collapsed=!0),t.pos=i}});return s=c,{categories:n,mapOfIdToNode:l,mapOfPosToGridNode:c=(o=function(t,e,i){var s=t.nodes,n=e+(-1===e?0:r-1),a=(n-e)/2,l=e+a;return s.forEach(function(t){var i=t.data;p(i,!0)&&(i.y=e+(i.seriesIndex||0),delete i.seriesIndex),t.pos=l}),i[l]=t,t.pos=l,t.tickmarkOffset=a+.5,t.collapseStart=n+.5,t.children.forEach(function(t){o(t,n+1,i),n=(t.collapseEnd||0)-.5}),t.collapseEnd=n+.5,i})(s["-1"],-1,{}),collapsedNodes:a,tree:v}}function b(t){t.target.axes.filter(function(t){return"treegrid"===t.options.type}).forEach(function(e){var i,r,s=e.options||{},o=s.labels,n=s.uniqueNames,l=s.max,d=!e.treeGrid.mapOfPosToGridNode||e.series.some(function(t){return!t.hasRendered||t.isDirtyData||t.isDirty}),h=0;if(d){if(i=e.series.reduce(function(t,e){return e.visible&&((e.options.data||[]).forEach(function(i){e.options.keys&&e.options.keys.length&&(i=e.pointClass.prototype.optionsToObject.call({series:e},i),e.pointClass.setGanttPointAliases(i)),p(i,!0)&&(i.seriesIndex=h,t.push(i))}),!0===n&&h++),t},[]),l&&i.length<l)for(var u=i.length;u<=l;u++)i.push({name:u+"​"});r=x(i,n||!1,!0===n?h:1),e.categories=r.categories,e.treeGrid.mapOfPosToGridNode=r.mapOfPosToGridNode,e.hasNames=!0,e.treeGrid.tree=r.tree,e.series.forEach(function(t){var e=(t.options.data||[]).map(function(e){return c(e)&&t.options.keys&&t.options.keys.length&&i.forEach(function(t){e.indexOf(t.x)>=0&&e.indexOf(t.x2)>=0&&(e=t)}),p(e,!0)?f(e):e});t.visible&&t.setData(e,!1)}),e.treeGrid.mapOptionsToLevel=a({defaults:o,from:1,levels:o&&o.levels,to:e.treeGrid.tree&&e.treeGrid.tree.height}),"beforeRender"===t.type&&(e.treeGrid.collapsedNodes=r.collapsedNodes)}})}function y(t,e){var i,r,s,o=this.treeGrid.mapOptionsToLevel||{},a="treegrid"===this.options.type,l=this.ticks,d=l[e];a&&this.treeGrid.mapOfPosToGridNode?((i=o[(s=this.treeGrid.mapOfPosToGridNode[e]).depth])&&(r={labels:i}),!d&&n?l[e]=d=new n(this,e,void 0,void 0,{category:s.name,tickmarkOffset:s.tickmarkOffset,options:r}):(d.parameters.category=s.name,d.options=r,d.addLabel())):t.apply(this,Array.prototype.slice.call(arguments,1))}function G(t,e,i,r){var s=this,o="treegrid"===i.type;s.treeGrid||(s.treeGrid=new A(s)),o&&(l(e,"beforeRender",b),l(e,"beforeRedraw",b),l(e,"addSeries",function(t){if(t.options.data){var e=x(t.options.data,i.uniqueNames||!1,1);s.treeGrid.collapsedNodes=(s.treeGrid.collapsedNodes||[]).concat(e.collapsedNodes)}}),l(s,"foundExtremes",function(){s.treeGrid.collapsedNodes&&s.treeGrid.collapsedNodes.forEach(function(t){var e=s.treeGrid.collapse(t);s.brokenAxis&&(s.brokenAxis.setBreaks(e,!1),s.treeGrid.collapsedNodes&&(s.treeGrid.collapsedNodes=s.treeGrid.collapsedNodes.filter(function(e){return t.collapseStart!==e.collapseStart||t.collapseEnd!==e.collapseEnd})))})}),l(s,"afterBreaks",function(){"yAxis"===s.coll&&!s.staticScale&&s.chart.options.chart.height&&(s.isDirty=!0)}),i=f({grid:{enabled:!0},labels:{align:"left",levels:[{level:void 0},{level:1,style:{fontWeight:"bold"}}],symbol:{type:"triangle",x:-5,y:-5,height:10,width:10,padding:5}},uniqueNames:!1},i,{reversed:!0,grid:{columns:void 0}})),t.apply(s,[e,i,r]),o&&(s.hasNames=!0,s.options.showLastLabel=!0)}function P(t){var e=this.options;"treegrid"===e.type?(this.min=v(this.userMin,e.min,this.dataMin),this.max=v(this.userMax,e.max,this.dataMax),h(this,"foundExtremes"),this.setAxisTranslation(),this.tickmarkOffset=.5,this.tickInterval=1,this.tickPositions=this.treeGrid.mapOfPosToGridNode?this.treeGrid.getTickPositions():[]):t.apply(this,Array.prototype.slice.call(arguments,1))}var A=function(){function s(t){this.axis=t}return s.compose=function(s,a,l,d){if(o.pushUnique(m,s)){-1===s.keepProps.indexOf("treeGrid")&&s.keepProps.push("treeGrid");var h=s.prototype;g(h,"generateTick",y),g(h,"init",G),g(h,"setTickInterval",P),h.utils={getNode:i.getNode}}return o.pushUnique(m,d)&&!n&&(n=d),e.compose(s,a,d),t.compose(s,l),r.compose(d),s},s.prototype.setCollapsedStatus=function(t){var e=this.axis,i=e.chart;e.series.forEach(function(e){var r=e.options.data;if(t.id&&r){var s=i.get(t.id),o=r[e.data.indexOf(s)];s&&o&&(s.collapsed=t.collapsed,o.collapsed=t.collapsed)}})},s.prototype.collapse=function(t){var e=this.axis,i=e.options.breaks||[],r=k(t,e.max);return i.push(r),t.collapsed=!0,e.treeGrid.setCollapsedStatus(t),i},s.prototype.expand=function(t){var e=this.axis,i=e.options.breaks||[],r=k(t,e.max);return t.collapsed=!1,e.treeGrid.setCollapsedStatus(t),i.reduce(function(t,e){return(e.to!==r.to||e.from!==r.from)&&t.push(e),t},[])},s.prototype.getTickPositions=function(){var t=this.axis,e=Math.floor(t.min/t.tickInterval)*t.tickInterval,i=Math.ceil(t.max/t.tickInterval)*t.tickInterval;return Object.keys(t.treeGrid.mapOfPosToGridNode||{}).reduce(function(r,s){var o=+s;return o>=e&&o<=i&&!(t.brokenAxis&&t.brokenAxis.isInAnyBreak(o))&&r.push(o),r},[])},s.prototype.isCollapsed=function(t){var e=this.axis,i=e.options.breaks||[],r=k(t,e.max);return i.some(function(t){return t.from===r.from&&t.to===r.to})},s.prototype.toggleCollapse=function(t){return this.isCollapsed(t)?this.expand(t):this.collapse(t)},s}();return A}),i(e,"masters/modules/treegrid.src.js",[e["Core/Globals.js"],e["Core/Axis/TreeGrid/TreeGridAxis.js"]],function(t,e){e.compose(t.Axis,t.Chart,t.Series,t.Tick)})});//# sourceMappingURL=treegrid.js.map