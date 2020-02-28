Run Script BOSH Add-On
=======================
This is a BOSH release skeleton made up of a single script file to execute right after the VM has been deployed. <br>
<p>
It is to execute on every BOSH-deployed VM as an Add-On.<br>
All required properties must be set using <code>bosh update-runtime-config &lt;config.yml&gt;</code><br>
The configuration file can be as follows:<br>
<strong>config.yml</strong><br>
<pre>
<code>
	releases:
	- name: run-script
	  version: 1.0.0
<br>
	addons:
	- name: bosh-script
	  jobs:
	  - name: run-script
	    release: run-script
	  properties:
	    run-script:
	      PARAMETER_A: &lt;some.value&gt;
	      PARAMETER_B: &lt;some.value&gt;
</code>
</pre>
</p>
You can upload your release during the development to test it using the following commands:<br>
<pre>
<code>
bosh create-release --force
bosh upload-release
</code>
</pre>
<br>
You can publish your release after having finished it using commands as follows:<br>
<pre>
<code>
bosh create-release --final [--version=1.0.0 --tarball=./run-script-1.0.0.tgz]
bosh upload-release ./run-script-1.0.0.tgz
</code>
</pre>

Author: Denis Baltor<br>
Date : 28.02.2020
