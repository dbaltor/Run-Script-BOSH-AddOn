Run Script BOSH Add-On
=======================
This is a BOSH release skeleton made up of a single script file to execute right after the VM has been deployed. <br>
<p>
It is to execute on every BOSH-deployed VM as an Add-On.<br>
All required properties must be set using <code>bosh update-runtime-config &lt;config.yml&gt;</code><br>
The configuration file can be as follows:<br>
<strong>config.yml</strong><br>
<code>
	releases:<br>
	- name: run-script<br>
	  version: 1.0.0<br>
<br>
	addons:
	- name: one-time-script
	  jobs:
	  - name: run-script
	    release: run-script
	  properties:
	    run-script:
	      PARAMETER_A: &lt;some.value&gt;
	      PARAMETER_B: &lt;some.value&gt;
</code>
</p>
Author: Denis Baltor<br>
Date : 28.02.2020
