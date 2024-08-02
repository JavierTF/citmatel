/**
 * Highcharts JS v11.2.0 (2023-10-30)
 *
 * Pareto series type for Highcharts
 *
 * (c) 2010-2021 Sebastian Bochan
 *
 * License: www.highcharts.com/license
 */!function(e){"object"==typeof module&&module.exports?(e.default=e,module.exports=e):"function"==typeof define&&define.amd?define("highcharts/modules/pareto",["highcharts"],function(t){return e(t),e.Highcharts=t,e}):e("undefined"!=typeof Highcharts?Highcharts:void 0)}(function(e){"use strict";var t=e?e._modules:{};function s(e,t,s,i){e.hasOwnProperty(t)||(e[t]=i.apply(null,s),"function"==typeof CustomEvent&&window.dispatchEvent(new CustomEvent("HighchartsModuleLoaded",{detail:{path:t,module:e[t]}})))}s(t,"Series/DerivedComposition.js",[t["Core/Globals.js"],t["Core/Series/Series.js"],t["Core/Utilities.js"]],function(e,t,s){var i,r=e.noop,n=s.addEvent,o=s.defined;return function(e){var i=[];function a(){t.prototype.init.apply(this,arguments),this.initialised=!1,this.baseSeries=null,this.eventRemovers=[],this.addEvents()}function u(){var e=this.chart,t=this.options.baseSeries,s=o(t)&&(e.series[t]||e.get(t));this.baseSeries=s||null}function d(){var e=this;this.eventRemovers.push(n(this.chart,"afterLinkSeries",function(){e.setBaseSeries(),e.baseSeries&&!e.initialised&&(e.setDerivedData(),e.addBaseSeriesEvents(),e.initialised=!0)}))}function p(){var e=this;this.eventRemovers.push(n(this.baseSeries,"updatedData",function(){e.setDerivedData()}),n(this.baseSeries,"destroy",function(){e.baseSeries=null,e.initialised=!1}))}function c(){this.eventRemovers.forEach(function(e){e()}),t.prototype.destroy.apply(this,arguments)}e.hasDerivedData=!0,e.setDerivedData=r,e.compose=function(e){if(s.pushUnique(i,e)){var t=e.prototype;t.addBaseSeriesEvents=p,t.addEvents=d,t.destroy=c,t.init=a,t.setBaseSeries=u}return e},e.init=a,e.setBaseSeries=u,e.addEvents=d,e.addBaseSeriesEvents=p,e.destroy=c}(i||(i={})),i}),s(t,"Series/ParetoSeries/ParetoSeriesDefaults.js",[],function(){return{zIndex:3}}),s(t,"Series/ParetoSeries/ParetoSeries.js",[t["Series/DerivedComposition.js"],t["Series/ParetoSeries/ParetoSeriesDefaults.js"],t["Core/Series/SeriesRegistry.js"],t["Core/Utilities.js"]],function(e,t,s,i){var r,n=this&&this.__extends||(r=function(e,t){return(r=Object.setPrototypeOf||({__proto__:[]})instanceof Array&&function(e,t){e.__proto__=t}||function(e,t){for(var s in t)Object.prototype.hasOwnProperty.call(t,s)&&(e[s]=t[s])})(e,t)},function(e,t){if("function"!=typeof t&&null!==t)throw TypeError("Class extends value "+String(t)+" is not a constructor or null");function s(){this.constructor=e}r(e,t),e.prototype=null===t?Object.create(t):(s.prototype=t.prototype,new s)}),o=s.seriesTypes.line,a=i.correctFloat,u=i.merge,d=i.extend,p=function(e){function s(){var t=null!==e&&e.apply(this,arguments)||this;return t.data=void 0,t.points=void 0,t.options=void 0,t}return n(s,e),s.prototype.sumPointsPercents=function(e,t,s,i){for(var r,n=[],o=0,u=0,d=0,p=0;p<e.length;p++){var c=e[p];null!==c&&(i?u+=c:(r=c/s*100,n.push([t[o],a(d+r)]),d+=r)),++o}return i?u:n},s.prototype.setDerivedData=function(){var e=this.baseSeries.xData,t=this.baseSeries.yData,s=this.sumPointsPercents(t,e,null,!0);this.setData(this.sumPointsPercents(t,e,s,!1),!1)},s.defaultOptions=u(o.defaultOptions,t),s}(o);return d(p.prototype,{hasDerivedData:e.hasDerivedData}),e.compose(p),s.registerSeriesType("pareto",p),p}),s(t,"masters/modules/pareto.src.js",[],function(){})});//# sourceMappingURL=pareto.js.map