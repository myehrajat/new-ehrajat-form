<html lang="en-us" style="height:100%;" dir="ltr">
    <head>
      <title>Web Components - Template Slots</title>
      <meta charset="UTF-8">
      <meta http-equiv="x-ua-compatible" content="IE=edge">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="icon" type="image/x-icon" href="../css/images/favicon.ico">
      <link rel="apple-touch-icon-precomposed" href="../css/images/touchicon.png">
      <meta name="apple-mobile-web-app-title" content="Oracle JET">
      <link rel="stylesheet" id="css" href="http://www.oracle.com/webfolder/technetwork/jet/css/libs/oj/v8.1.0/alta/oj-alta-min.css">
      <link rel="stylesheet" href="../css/demo.css">
      <script>
        // The "oj_whenReady" global variable enables a strategy that the busy context whenReady,
        // will implicitly add a busy state, until the application calls applicationBootstrapComplete
        // on the busy state context.
        window["oj_whenReady"] = true;
      </script>
      <script src="http://www.oracle.com/webfolder/technetwork/jet/js/libs/require/require.js"></script>
      <!-- RequireJS bootstrap file -->
      <script src="../js/main.js"></script>
      <script src="../js/demo.js"></script>
    
    <script>!function(){function o(n,i){if(n&&i)for(var r in i)i.hasOwnProperty(r)&&(void 0===n[r]?n[r]=i[r]:n[r].constructor===Object&&i[r].constructor===Object?o(n[r],i[r]):n[r]=i[r])}try{var n=decodeURIComponent("");if(n.length>0&&window.JSON&&"function"==typeof window.JSON.parse){var i=JSON.parse(n);void 0!==window.BOOMR_config?o(window.BOOMR_config,i):window.BOOMR_config=i}}catch(r){window.console&&"function"==typeof window.console.error&&console.error("mPulse: Could not parse configuration",r)}}();</script>
    <script>!function(a){var e="https://s.go-mpulse.net/boomerang/",t="addEventListener";if("False"=="True")a.BOOMR_config=a.BOOMR_config||{},a.BOOMR_config.PageParams=a.BOOMR_config.PageParams||{},a.BOOMR_config.PageParams.pci=!0,e="https://s2.go-mpulse.net/boomerang/";if(window.BOOMR_API_key="DXNLE-YBWWY-AR74T-WMD99-77VRA",function(){function n(e){a.BOOMR_onload=e&&e.timeStamp||(new Date).getTime()}if(!a.BOOMR||!a.BOOMR.version&&!a.BOOMR.snippetExecuted){a.BOOMR=a.BOOMR||{},a.BOOMR.snippetExecuted=!0;var i,o,_,r=document.createElement("iframe");if(a[t])a[t]("load",n,!1);else if(a.attachEvent)a.attachEvent("onload",n);r.src="javascript:void(0)",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="width:0;height:0;border:0;display:none;",_=document.getElementsByTagName("script")[0],_.parentNode.insertBefore(r,_);try{o=r.contentWindow.document}catch(O){i=document.domain,r.src="javascript:var d=document.open();d.domain='"+i+"';void(0);",o=r.contentWindow.document}o.open()._l=function(){var a=this.createElement("script");if(i)this.domain=i;a.id="boomr-if-as",a.src=e+"DXNLE-YBWWY-AR74T-WMD99-77VRA",BOOMR_lstart=(new Date).getTime(),this.body.appendChild(a)},o.write("<bo"+'dy onload="document._l();">'),o.close()}}(),"".length>0)if(a&&"performance"in a&&a.performance&&"function"==typeof a.performance.setResourceTimingBufferSize)a.performance.setResourceTimingBufferSize();!function(){if(BOOMR=a.BOOMR||{},BOOMR.plugins=BOOMR.plugins||{},!BOOMR.plugins.AK){var e=""=="true"?1:0,t="",n="lwxf4nqccpd6kxughkga-f-e76cd80a8-clientnsv4-s.akamaihd.net",i={"ak.v":"26","ak.cp":"82485","ak.ai":parseInt("165266",10),"ak.ol":"0","ak.cr":120,"ak.ipv":4,"ak.proto":"h2","ak.rid":"27eda339","ak.r":36353,"ak.a2":e,"ak.m":"dscx","ak.n":"essl","ak.bpcip":"93.174.94.0","ak.cport":60792,"ak.gh":"2.19.194.111","ak.quicv":"","ak.tlsv":"tls1.3","ak.0rtt":"","ak.csrc":"-","ak.acc":"","ak.t":"1585855116","ak.ak":"hOBiQwZUYzCg5VSAfCLimQ==neYfJMNX0pc+dIOyPIVhXeNW9IA1EyaaVx9FexR7Vh+/2qPHegg+RLazbEQAYWJvukEMSdoBCurSJyp6L4GEJZYxp/V2Uy95ZTo01KCNypiL5MGxmURDKmNsjh0EP2s3fI5JfYCZVBSy2kjLo/sDTUnQMIp0VGUWCndnEjdEeCmi5sHZ6bW46ozAnzBAkoSKmBDipmXN0MhMieVTr+krKiK79xv0F8FA08Q4hTlRG0IR/FeYYOQXw/LsroDNzoHHEoJ72C5w/EPzmivKKOh8JrOBgQyBAAr+zHqv9+hnMZxWw/OsFxQylk1eZ5cV2ti0MAHGdT2Bc3hIhFRttyzs6RsIRN9i/4HRoS1ZNp9Ngs9lPfojmErdpeShLKWwl+l7Uew7eVlq5uYSr+nIm3IzR6CpAbOaCeTo1DlTmlEtJVg="};if(""!==t)i["ak.ruds"]=t;var o={i:!1,av:function(e){var t="http.initiator";if(e&&(!e[t]||"spa_hard"===e[t]))i["ak.feo"]=void 0!==a.aFeoApplied?1:0,BOOMR.addVar(i)},rv:function(){var a=["ak.bpcip","ak.cport","ak.cr","ak.csrc","ak.gh","ak.ipv","ak.m","ak.n","ak.ol","ak.proto","ak.quicv","ak.tlsv","ak.0rtt","ak.r","ak.acc","ak.t"];BOOMR.removeVar(a)}};BOOMR.plugins.AK={akVars:i,akDNSPreFetchDomain:n,init:function(){if(!o.i){var a=BOOMR.subscribe;a("before_beacon",o.av,null,null),a("onbeacon",o.rv,null,null),o.i=!0}return this},is_complete:function(){return!0}}}}()}(window);</script></head>
    <body class="demo-disable-bg-image">
      <div id="sampleDemo" style="" class="demo-padding demo-container">
        <div id="componentDemoContent" style="width: 1px; min-width: 100%;">
                  
          <demo-list id="grocerylist" data="{{groceryList}}" header="Grocery List" style="width:100%;max-width:400px">
            <!-- Template for displaying list items -->
            <!-- Delete this template to see the default "item" template -->
            <template slot="item" data-oj-as="groceryItem">
              <oj-checkboxset :aria-label="[[groceryItem.value]]">
                <oj-option value="bought"><oj-bind-text value='[[groceryItem.value]]'></oj-bind-text></oj-option>
              </oj-checkboxset>
            </template>
            <!-- Template for displaying total item count -->
            <!-- Delete this template to see the default "total" template -->
            <template slot="total" data-oj-as="groceries">
              <span style="font-weight: bold">Qualifies for Express Checkout (10 items or less): </span>
                <oj-bind-text value="[[groceries.total <= 10 ? 'Yes!' : 'No :(']]"></oj-bind-text>
            </template>
          </demo-list>
          
          
          
          
        </div>
      </div>
    </body>
  </html>