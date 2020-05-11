# OpenapiClient::Secure3DAuthenticationResponseSecure3dMethod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method_form** | **String** | An iframe to be hidden in the browser used to collect browser data for the issuers. This information adds to the overall consumer profile and helps in identifying potentially fraudulent transactions. | [optional] 
**secure3d_trans_id** | **String** | A unique transaction identifier supplied by the ACS. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Secure3DAuthenticationResponseSecure3dMethod.new(method_form: &amp;lt;!DOCTYPE iframe SYSTEM &quot;about:legacy-compat&quot;&amp;gt; &amp;lt;iframe id&#x3D;&quot;tdsMmethodTgtFrame&quot; name&#x3D;&quot;tdsMmethodTgtFrame&quot;
         style&#x3D;&quot;width: 1px; height: 1px; display: none;&quot; src&#x3D;&quot;javascript:false;&quot; xmlns&#x3D;&quot;http://www.w3.org/1999/xhtml&quot;&amp;gt;
&amp;lt;!--.--&amp;gt; &amp;lt;/iframe&amp;gt;&amp;lt;form id&#x3D;&quot;tdsMmethodForm&quot; name&#x3D;&quot;tdsMmethodForm&quot;
         action&#x3D;&quot;https://localhost.modirum.com:8543/dstests/ACSEmu2&quot; method&#x3D;&quot;post&quot;
         target&#x3D;&quot;tdsMmethodTgtFrame&quot; xmlns&#x3D;&quot;http://www.w3.org/1999/xhtml&quot;&amp;gt; &amp;lt;input type&#x3D;&quot;hidden&quot; name&#x3D;&quot;3DSMethodData&quot;
         value&#x3D;&quot;eyAidGhyZWVEU1NlcnZlclRyYW5zSUQiIDogIjAwMDAwMDAwLTU2NzYtNTY2My04MDAwLTAwMDAw
&amp;amp;#10;MDAwNDFhOSIsICJ0aHJlZURTTWV0aG9kTm90aWZpY2F0aW9uVVJMIiA6ICJodHRwczovL2xvY
         2Fs&amp;amp;#10;aG9zdC5tb2RpcnVtLmNvbTo4NTQzL21kcGF5bXBpL01lcmNoYW50U2VydmVyP21uPVkmdHhpZD0x
&amp;amp;#10;NjgwOSZkaWdlc3Q9aSUyQnhhUEF5NWFOcVJRbllqNmozbWFDZlFJbTdFdjJYTmkwNn
         h6YmZNJTJG&amp;amp;#10;R3MlM0QiIH0&quot;/&amp;gt; &amp;lt;input type&#x3D;&quot;hidden&quot; name&#x3D;&quot;threeDSMethodData&quot;
         value&#x3D;&quot;eyAidGhyZWVEU1NlcnZlclRyYW5zSUQiIDogIjAwMDAwMDAwLTU2NzYtNTY2My04MDAwLTAwMDA
         w&amp;amp;#10;MDAwNDFhOSIsICJ0aHJlZURTTWV0aG9kTm90aWZpY2F0aW9uVVJMIiA6ICJodHRwczovL2xvY
         2Fs&amp;amp;#10;aG9zdC5tb2RpcnVtLmNvbTo4NTQzL21kcGF5bXBpL01lcmNoYW50U2VydmVyP21uPVkmd
         HhpZD0x&amp;amp;#10;NjgwOSZkaWdlc3Q9aSUyQnhhUEF5NWFOcVJRbllqNmozbWFDZlFJbTdFdjJYTmkwNn
         h6YmZNJTJG&amp;amp;#10;R3MlM0QiIH0&quot;/&amp;gt;
&amp;lt;/form&amp;gt;&amp;lt;script type&#x3D;&quot;text/javascript&quot; xmlns&#x3D;&quot;http://www.w3.org/1999/xhtml&quot;&amp;gt;
         document.getElementById(&quot;tdsMmethodForm&quot;).submit(); &amp;lt;/script&amp;gt;,
                                 secure3d_trans_id: 3ac7caa7-aa42-2663-791b-2ac05a542c4a)
```


