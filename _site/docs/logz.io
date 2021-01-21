<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Send log alerts to Squadcast from Logz.io (ELK stack)">
<meta name="keywords" content="LogstashManageEngine-Opmanager,  ">
<title>Logz.io | Incident Management using Squadcast</title>
<link rel="stylesheet" href="css/syntax.css">

<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!--<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">-->
<link rel="stylesheet" href="css/modern-business.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="css/customstyles.css">
<link rel="stylesheet" href="css/boxshadowproperties.css">
<!-- most color styles are extracted out to here -->
<link rel="stylesheet" href="css/theme-blue.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script src="js/jquery.navgoco.min.js"></script>


<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!-- Anchor.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/anchor-js/4.2.0/anchor.min.js"></script>
<script src="js/toc.js"></script>
<script src="js/customscripts.js"></script>


<link rel="shortcut icon" href="images/favicon1.png">


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<link rel="alternate" type="application/rss+xml" title="" href="http://localhost:4000/feed.xml">

<!-- Fonts (Nunitosans & Opensans) -->

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:ital,wght@0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;0,700;0,800;1,300;1,400;1,600;1,700;1,800&display=swap" rel="stylesheet">
    <script>
        $(document).ready(function() {
            // Initialize navgoco with default options
            $("#mysidebar").navgoco({
                caretHtml: '',
                accordion: true,
                openClass: 'active', // open
                save: false, // leave false or nav highlighting doesn't work right
                cookie: {
                    name: 'navgoco',
                    expires: false,
                    path: '/'
                },
                slide: {
                    duration: 400,
                    easing: 'swing'
                }
            });

            $("#collapseAll").click(function(e) {
                e.preventDefault();
                $("#mysidebar").navgoco('toggle', false);
            });

            $("#expandAll").click(function(e) {
                e.preventDefault();
                $("#mysidebar").navgoco('toggle', true);
            });

        });

    </script>
    <script>
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
    </script>
    <script>
        $(document).ready(function() {
            $("#tg-sb-link").click(function() {
                $("#tg-sb-sidebar").toggle();
                $("#tg-sb-content").toggleClass('col-md-9');
                $("#tg-sb-content").toggleClass('col-md-12');
                $("#tg-sb-icon").toggleClass('fa-toggle-on');
                $("#tg-sb-icon").toggleClass('fa-toggle-off');
            });
        });
    </script>
    

</head>
<body>
<style>
    li, .post-header, .summary, p, .post-content, #search-input {
        font-family: 'Nunito Sans', sans-serif;
    }
</style>
<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container topnavlinks">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            <a class="navbar-brand" href="../index.html">&nbsp;<span class="projectTitle"> <img src="../images/squadcast_logo_white.png" style="width: 80%; margin-top: -2%;"> </span></a>
            
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <!-- toggle sidebar button -->
                <!--li><a id="tg-sb-link" href="#"><i id="tg-sb-icon" class="fa fa-toggle-on"></i> Nav</a></li-->
                <!-- entries without drop-downs appear here -->




                
                
                
                <li><a href="https://www.squadcast.com" target="_blank" rel="noopener">Home</a></li>
                
                
                
                <li><a href="https://www.squadcast.com/blog" target="_blank" rel="noopener">Blog</a></li>
                
                
                
                <li><a href="https://headwayapp.co/squadcast-updates" target="_blank" rel="noopener">Changelog</a></li>
                
                
                
                <!-- entries with drop-downs appear here -->
                <!-- conditional logic to control which topnav appears for the audience defined in the configuration file.-->
                
                
			<li>



  <a class="email" title="Submit feedback" href="#" onclick="javascript:window.location='mailto:support@squadcast.com?subject=Squadcast Support feedback&body=I have some feedback about the Logz.io page: ' + window.location.href;"><i class="fa fa-envelope-o" id="envel"></i> Feedback</a>

</li>

		
                <!--comment out this block if you want to hide search-->
                <li>
                    <!--start search-->
                    <div id="search-demo-container">
                        <input type="text" id="search-input" placeholder="Find anything">
                        <ul id="results-container"></ul>
                    </div>
                    <script src="js/jekyll-search.js" type="text/javascript"></script>
                    <script type="text/javascript">
                            SimpleJekyllSearch.init({
                                searchInput: document.getElementById('search-input'),
                                resultsContainer: document.getElementById('results-container'),
                                dataSource: 'search.json',
                                searchResultTemplate: '<li><a href="{url}" title="Logz.io">{title}</a></li>',
                    noResultsText: 'No results found',
                            limit: 10,
                            fuzzy: true,
                    })
                    </script>
                    <!--end search-->
                </li>
            </ul>
        </div>
        </div>
        <!-- /.container -->
</nav>

<!-- Page Content -->
<div class="container">
  <div id="main">
    <!-- Content Row -->
    <div class="row">
        
        
            <!-- Sidebar Column -->
            <div class="col-md-3" id="tg-sb-sidebar">
                

<ul id="mysidebar" class="nav">
  <li class="sidebarTitle"> </li>
  
  
  
      
  
  <li>
      <a title="Getting Started" href="#">Getting Started</a>
      <ul>
          
          
          
          <li><a title="Quickstart Guide" href="/docs/getting-started">Quickstart Guide</a></li>
          
          
          
          
          
          
          <li><a title="Glossary" href="/docs/glossary">Glossary</a></li>
          
          
          
          
          
          
          <li><a title="FAQs" href="/docs/squadcast-faq">FAQs</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="User Management" href="#">User Management</a>
      <ul>
          
          
          
          <li><a title="Manage Your Profile" href="/docs/set-up-your-profile">Manage Your Profile</a></li>
          
          
          
          
          
          
          <li><a title="Manage All Users" href="/docs/managing-all-users">Manage All Users</a></li>
          
          
          
          
          
          
          <li><a title="Add Users" href="/docs/add-users">Add Users</a></li>
          
          
          
          
          
          
          <li><a title="Import Users" href="/docs/import-users">Import Users</a></li>
          
          
          
          
          
          
          <li><a title="Notification Rules" href="/docs/notification-rules">Notification Rules</a></li>
          
          
          
          
          
          
          <li><a title="Change Account Owner" href="/docs/transfer-ownership">Change Account Owner</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="Squads" href="#">Squads</a>
      <ul>
          
          
          
          <li><a title="Manage Squads" href="/docs/squads">Manage Squads</a></li>
          
          
          
          
          
          
          <li><a title="Create Smart Squads" href="/docs/create-smart-squads">Create Smart Squads</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="Services" href="#">Services</a>
      <ul>
          
          
          
          <li><a title="Adding a Service" href="/docs/adding-a-service-1">Adding a Service</a></li>
          
          
          
          
          
          
          <li><a title="Maintenance Mode" href="/docs/maintenance-mode">Maintenance Mode</a></li>
          
          
          
          
          
          
          <li><a title="Suppression Rules" href="/docs/suppression-rules">Suppression Rules</a></li>
          
          
          
          
          
          
          <li><a title="Service Levels" href="/docs/service-levels">Service Levels</a></li>
          
          
          
          
          
          
          <li><a title="De-duplication Rules" href="/docs/de-duplication-rules">De-duplication Rules</a></li>
          
          
          
          
          
          
          <li><a title="Event Tagging" href="/docs/event-tagging">Event Tagging</a></li>
          
          
          
          
          
          
          <li><a title="Alert Routing" href="/docs/alert-routing">Alert Routing</a></li>
          
          
          
          
          
          
          <li><a title="Deleting a Service" href="/docs/deleting-a-service">Deleting a Service</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="Schedules" href="#">Schedules</a>
      <ul>
          
          
          
          <li><a title="Create and Manage On-call Schedules & Rotations" href="/docs/schedules">Create and Manage On-call Schedules & Rotations</a></li>
          
          
          
          
          
          
          <li><a title="Supported On-call Schedules & Rotations" href="/docs/schedule-types">Supported On-call Schedules & Rotations</a></li>
          
          
          
          
          
          
          <li><a title="Who is On-Call?" href="/docs/who-is-on-call">Who is On-Call?</a></li>
          
          
          
          
          
          
          <li><a title="Schedule Overrides" href="/docs/schedule-overrides">Schedule Overrides</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="Escalation Policies" href="#">Escalation Policies</a>
      <ul>
          
          
          
          <li><a title="Create & Manage Escalation Policies" href="/docs/escalation-policies">Create & Manage Escalation Policies</a></li>
          
          
          
          
          
          
          <li><a title="Editing an Existing Escalation Policy" href="/docs/editing-an-existing-escalation-policy">Editing an Existing Escalation Policy</a></li>
          
          
          
          
          
          
          <li><a title="Invoke an Escalation Policy for an Existing Incident" href="/docs/invoke-an-escalation-policy-for-an-existing-incident">Invoke an Escalation Policy for an Existing Incident</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="Dashboards" href="#">Dashboards</a>
      <ul>
          
          
          
          <li><a title="Incident Dashboard" href="/docs/incident-dashboard">Incident Dashboard</a></li>
          
          
          
          
          
          
          <li><a title="Dashboard Metrics" href="/docs/dashboard-metrics">Dashboard Metrics</a></li>
          
          
          
          
          
          
          <li><a title="SLO Dashboard" href="/docs/slo-dashboard">SLO Dashboard</a></li>
          
          
          
          
          
          
          <li><a title="Take Bulk Actions" href="/docs/take-bulk-actions">Take Bulk Actions</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="Incidents Page" href="#">Incidents Page</a>
      <ul>
          
          
          
          <li><a title="Incident Details" href="/docs/incident-details">Incident Details</a></li>
          
          
          
          
          
          
          <li><a title="Incident Timeline" href="/docs/incident-timeline">Incident Timeline</a></li>
          
          
          
          
          
          
          <li><a title="Incident War Room" href="/docs/warroom">Incident War Room</a></li>
          
          
          
          
          
          
          <li><a title="Pin messages from War Room to the Incident Timeline" href="/docs/pin-messages-from-warroom-to-timeline">Pin messages from War Room to the Incident Timeline</a></li>
          
          
          
          
          
          
          <li><a title="Manually Creating an Incident" href="/docs/manually-creating-an-incident">Manually Creating an Incident</a></li>
          
          
          
          
          
          
          <li><a title="Postmortems" href="/docs/postmortems">Postmortems</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="StatusPage" href="#">StatusPage</a>
      <ul>
          
          
          
          <li><a title="StatusPage" href="/docs/statuspage">StatusPage</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="Analytics" href="#">Analytics</a>
      <ul>
          
          
          
          <li><a title="Analyze Metrics" href="/docs/analytics">Analyze Metrics</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="Alert Source Integrations" href="#">Alert Source Integrations</a>
      <ul>
          
          
          
          <li><a title="Amazon Cloudwatch (AWS)" href="/docs/amazon-cloudwatch-aws">Amazon Cloudwatch (AWS)</a></li>
          
          
          
          
          
          
          <li><a title="AWS CloudWatch Event Rules" href="/docs/aws-cloudwatch-event-rules">AWS CloudWatch Event Rules</a></li>
          
          
          
          
          
          
          <li><a title="AWS CloudTrail Logs" href="/docs/aws-cloudtrail-logs">AWS CloudTrail Logs</a></li>
          
          
          
          
          
          
          <li><a title="AWS CloudTrail via CloudWatch" href="/docs/aws-cloudtrail-via-cloudwatch">AWS CloudTrail via CloudWatch</a></li>
          
          
          
          
          
          
          <li><a title="AppDynamics" href="/docs/appdynamics">AppDynamics</a></li>
          
          
          
          
          
          
          <li><a title="API" href="/docs/api">API</a></li>
          
          
          
          
          
          
          <li><a title="APIv2" href="/docs/apiv2">APIv2</a></li>
          
          
          
          
          
          
          <li><a title="Azure Monitor" href="/docs/azure-monitor">Azure Monitor</a></li>
          
          
          
          
          
          
          <li><a title="Bugsnag" href="/docs/bugsnag">Bugsnag</a></li>
          
          
          
          
          
          
          <li><a title="Buildkite" href="/docs/buildkite">Buildkite</a></li>
          
          
          
          
          
          
          <li><a title="Checkmk" href="/docs/checkmk">Checkmk</a></li>
          
          
          
          
          
          
          <li><a title="Cisco DNAC" href="/docs/cisco-dnac">Cisco DNAC</a></li>
          
          
          
          
          
          
          <li><a title="CopperEgg" href="/docs/copperegg">CopperEgg</a></li>
          
          
          
          
          
          
          <li><a title="Coralogix" href="/docs/coralogix">Coralogix</a></li>
          
          
          
          
          
          
          <li><a title="Crashlytics" href="/docs/crashlytics">Crashlytics</a></li>
          
          
          
          
          
          
          <li><a title="Datadog" href="/docs/datadog">Datadog</a></li>
          
          
          
          
          
          
          <li><a title="Elastic" href="/docs/elastic">Elastic</a></li>
          
          
          
          
          
          
          <li><a title="ElastAlert" href="/docs/elastalert">ElastAlert</a></li>
          
          
          
          
          
          
          <li><a title="Email" href="/docs/email">Email</a></li>
          
          
          
          
          
          
          <li><a title="Freshping" href="/docs/freshping">Freshping</a></li>
          
          
          
          
          
          
          <li><a title="Ghost Inspector" href="/docs/ghost-inspector">Ghost Inspector</a></li>
          
          
          
          
          
          
          <li><a title="Grafana" href="/docs/grafana">Grafana</a></li>
          
          
          
          
          
          
          <li><a title="Graylog" href="/docs/graylog">Graylog</a></li>
          
          
          
          
          
          
          <li><a title="Honeybadger" href="/docs/honeybadger">Honeybadger</a></li>
          
          
          
          
          
          
          <li><a title="InsightOps (LogEntries)" href="/docs/insightops-logentries">InsightOps (LogEntries)</a></li>
          
          
          
          
          
          
          <li><a title="Instana" href="/docs/instana">Instana</a></li>
          
          
          
          
          
          
          <li><a title="Jenkins Integration" href="/docs/jenkins">Jenkins Integration</a></li>
          
          
          
          
          
          
          <li><a title="Jira Cloud Alert Source" href="/docs/jira-cloud-alert-source">Jira Cloud Alert Source</a></li>
          
          
          
          
          
          
          <li><a title="Jira Server Alert Source" href="/docs/jira-server-alert-source">Jira Server Alert Source</a></li>
          
          
          
          
          
          
          <li><a title="Kapacitor" href="/docs/kapacitor">Kapacitor</a></li>
          
          
          
          
          
          
          <li><a title="LogDNA" href="/docs/logdna">LogDNA</a></li>
          
          
          
          
          
          
          <li><a title="Loggly" href="/docs/loggly">Loggly</a></li>
          
          
          
          
          
          
          <li><a title="Logstash" href="/docs/logstash-integration-guide">Logstash</a></li>
          
          
          
          
          
          
          <li class="active"><a title="Logz.io" href="/docs/logz.io">Logz.io</a></li>
          
          
          
          
          
          
          <li><a title="ManageEngine Opmanager" href="/docs/manageengine-opmanager">ManageEngine Opmanager</a></li>
          
          
          
          
          
          
          <li><a title="MongoDB Atlas / Cloud Manager" href="/docs/mongodb-atlas-cloud-manager">MongoDB Atlas / Cloud Manager</a></li>
          
          
          
          
          
          
          <li><a title="Nagios" href="/docs/nagios">Nagios</a></li>
          
          
          
          
          
          
          <li><a title="New Relic" href="/docs/new-relic">New Relic</a></li>
          
          
          
          
          
          
          <li><a title="Nixstats" href="/docs/nixstats">Nixstats</a></li>
          
          
          
          
          
          
          <li><a title="OverOps" href="/docs/overops">OverOps</a></li>
          
          
          
          
          
          
          <li><a title="Papertrail" href="/docs/papertrail">Papertrail</a></li>
          
          
          
          
          
          
          <li><a title="Pingdom" href="/docs/pingdom">Pingdom</a></li>
          
          
          
          
          
          
          <li><a title="Prometheus" href="/docs/prometheus">Prometheus</a></li>
          
          
          
          
          
          
          <li><a title="Rapid7 InsightIDR" href="/docs/rapid7-insightidr">Rapid7 InsightIDR</a></li>
          
          
          
          
          
          
          <li><a title="Runscope" href="/docs/runscope">Runscope</a></li>
          
          
          
          
          
          
          <li><a title="Scout APM" href="/docs/scout-apm">Scout APM</a></li>
          
          
          
          
          
          
          <li><a title="Sematext" href="/docs/sematext">Sematext</a></li>
          
          
          
          
          
          
          <li><a title="Sensu" href="/docs/sensu">Sensu</a></li>
          
          
          
          
          
          
          <li><a title="Sentry.io" href="/docs/sentryio">Sentry.io</a></li>
          
          
          
          
          
          
          <li><a title="Server Density" href="/docs/server-density">Server Density</a></li>
          
          
          
          
          
          
          <li><a title="SignalFx" href="/docs/signalfx">SignalFx</a></li>
          
          
          
          
          
          
          <li><a title="Site24x7" href="/docs/site24x7">Site24x7</a></li>
          
          
          
          
          
          
          <li><a title="Slack Alert Source Integration" href="/docs/slack-as-an-alert-source">Slack Alert Source Integration</a></li>
          
          
          
          
          
          
          <li><a title="SolarWinds AppOptics" href="/docs/solarwinds-appoptics">SolarWinds AppOptics</a></li>
          
          
          
          
          
          
          <li><a title="Splunk" href="/docs/splunk">Splunk</a></li>
          
          
          
          
          
          
          <li><a title="Sqreen" href="/docs/sqreen">Sqreen</a></li>
          
          
          
          
          
          
          <li><a title="Stackdriver" href="/docs/stackdriver">Stackdriver</a></li>
          
          
          
          
          
          
          <li><a title="StatusCake" href="/docs/statuscake">StatusCake</a></li>
          
          
          
          
          
          
          <li><a title="Sumo Logic" href="/docs/sumo-logic">Sumo Logic</a></li>
          
          
          
          
          
          
          <li><a title="Sysdig Monitor" href="/docs/sysdig-monitor">Sysdig Monitor</a></li>
          
          
          
          
          
          
          <li><a title="Threat Stack" href="/docs/threat-stack">Threat Stack</a></li>
          
          
          
          
          
          
          <li><a title="Uptime Robot" href="/docs/uptime-robot">Uptime Robot</a></li>
          
          
          
          
          
          
          <li><a title="Zabbix" href="/docs/zabbix-integration-guide">Zabbix</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="Integrations (Extensions)" href="#">Integrations (Extensions)</a>
      <ul>
          
          
          
          <li><a title="CircleCI Integration" href="/docs/circleci-integration">CircleCI Integration</a></li>
          
          
          
          
          
          
          <li><a title="GitHub" href="/docs/github">GitHub</a></li>
          
          
          
          
          
          
          <li><a title="Google Hangouts" href="/docs/hangouts">Google Hangouts</a></li>
          
          
          
          
          
          
          <li><a title="Jira Cloud" href="/docs/jira-cloud">Jira Cloud</a></li>
          
          
          
          
          
          
          <li><a title="Jira Server (On-Premise)" href="/docs/jira-server-on-premise">Jira Server (On-Premise)</a></li>
          
          
          
          
          
          
          <li><a title="Slack" href="/docs/slack">Slack</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="SSO" href="#">SSO</a>
      <ul>
          
          
          
          <li><a title="Azure Active Directory SSO" href="/docs/azure-active-directory-sso">Azure Active Directory SSO</a></li>
          
          
          
          
          
          
          <li><a title="Google SSO" href="/docs/google-sso">Google SSO</a></li>
          
          
          
          
          
          
          <li><a title="Microsoft ADFS SSO" href="/docs/adfs-sso">Microsoft ADFS SSO</a></li>
          
          
          
          
          
          
          <li><a title="Okta SSO" href="/docs/okta-sso-integration">Okta SSO</a></li>
          
          
          
          
          
          
          <li><a title="SAML 2.0 based SSO" href="/docs/saml-sso">SAML 2.0 based SSO</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="Mobile App" href="#">Mobile App</a>
      <ul>
          
          
          
          <li><a title="Using the Mobile App" href="/docs/using-the-mobile-app">Using the Mobile App</a></li>
          
          
          
          
          
          
          <li><a title="Pin messages from War Room to the Incident Timeline" href="/docs/pin-messages-from-warroom-to-timeline-1">Pin messages from War Room to the Incident Timeline</a></li>
          
          
          
          
          
          
          <li><a title="View Schedules on the Mobile App" href="/docs/mobile-app-see-who-is-on-call">View Schedules on the Mobile App</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="Squadcast Actions" href="#">Squadcast Actions</a>
      <ul>
          
          
          
          <li><a title="What are Squadcast Actions?" href="/docs/what-are-squadcast-actions">What are Squadcast Actions?</a></li>
          
          
          
          
          
          
          <li><a title="CircleCI Actions" href="/docs/circleci-actions">CircleCI Actions</a></li>
          
          
          
          
          
          
          <li><a title="Squadcast Runbooks (Depricated)" href="/docs/squadcast-runbooks">Squadcast Runbooks (Depricated)</a></li>
          
          
          
          
          
          
          <li><a title="How to Video - Squadcast Actions" href="/docs/how-to-video-squadcast-actions">How to Video - Squadcast Actions</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="Squadcast API Documentation" href="#">Squadcast API Documentation</a>
      <ul>
          
          
          
          <li><a title="Squadcast Public API - Refresh Token" href="/docs/squadcast-public-api">Squadcast Public API - Refresh Token</a></li>
          
          
          
          
          
          
          <li><a title="Squadcast API Documentation" href="https://apidocs.squadcast.com" target="_blank" rel="noopener">Squadcast API Documentation</a></li>
          
          
          
          
      </ul>
   </li>
     
      
  
  <li>
      <a title="Managing your Squadcast Account" href="#">Managing your Squadcast Account</a>
      <ul>
          
          
          
          <li><a title="Deactivating your Squadcast Account" href="/docs/deactivating-your-squadcast-account">Deactivating your Squadcast Account</a></li>
          
          
          
          
          
          
          <li><a title="Deleting your Squadcast Account" href="/docs/deleting-your-squadcast-account">Deleting your Squadcast Account</a></li>
          
          
          
          
          
          
          <li><a title="Incident Rate Limiting" href="/docs/incident-rate-limiting">Incident Rate Limiting</a></li>
          
          
          
          
          
          
          <li><a title="Organizations" href="/docs/squadcast-organizations">Organizations</a></li>
          
          
          
          
          
          
          <li><a title="Upgrading to a Paid Plan" href="/docs/upgrading-to-a-paid-plan">Upgrading to a Paid Plan</a></li>
          
          
          
          
      </ul>
   </li>
     
      
      
      <!-- if you aren't using the accordion, uncomment this block:
         <p class="external">
             <a href="#" id="collapseAll">Collapse All</a> | <a href="#" id="expandAll">Expand All</a>
         </p>
         -->
</ul>

<!-- this highlights the active parent class in the navgoco sidebar. this is critical so that the parent expands when you're viewing a page. This must appear below the sidebar code above. Otherwise, if placed inside customscripts.js, the script runs before the sidebar code runs and the class never gets inserted.-->
<script>$("li.active").parents('li').toggleClass("active");</script>

            </div>
            
        

        <!-- Content Column -->
        <div class="col-md-9" id="tg-sb-content">
            <style>
a[href^="http://"]:after, a[href^="https://"]:after {
    content: none;
}

.navbar{
    position: fixed;
    top: 0;
    width: 100%;
    /* background-image: linear-gradient(129deg,#252c66,#161f56); */
    background-color: #00162d;
}
.nav > li > a:hover {
    /* background-image: linear-gradient(129deg,#252c66,#161f56); */
    background-color: #00162d;
}
.nav > li.active > a {
    /* background-image: linear-gradient(129deg,#252c66,#161f56); */
    background-color: #00162d;
}
#mysidebar{
    height: 700px;
    overflow: auto;
}
body{
    padding-top: 70px;
}
.summary{
    border-left: 5px solid #6E7781;
}
li.sidebarTitle{
    color: #363E47;
}

@media screen and (max-width: 1920px){
    #tg-sb-sidebar{
        position: sticky;
        top: 9%; /*previously, 0*/
        margin-bottom: 30px;
    }
    #toc{
        position: fixed;
    }
    #results-container{
        margin-top: 10px;
    }
}
@media screen and (max-width: 1024px){
    #tg-sb-sidebar{
        position: relative;
        margin-bottom: auto;
    }
    #toc{
        display: none;
    }
    #results-container{
        margin-top: auto;
    }
}
</style>



<div class="post-content">
    <div class="col-md-8">
        <div class="post-header">
            <h1 class="post-title-main">Logz.io</h1>
        </div>
            
                <div class="summary">Send log alerts to Squadcast from Logz.io (ELK stack)</div>
            

                

            <p>This document will help you integrate Logz.io with Squadcast.</p>

<p><a href="https://logz.io/">Logz.io</a> allows engineers to look into their stack with powerful log, metric, and tracing analytics based on the cloud-native tools they use. 
Route detailed monitoring alerts from Logz.io to the right users in Squadcast.</p>

<h2 id="how-to-integrate-logzio-with-squadcast">How to integrate Logz.io with Squadcast</h2>

<h3 id="in-squadcast-using-logzio-as-an-alert-source">In Squadcast: Using Logz.io as an Alert Source</h3>

<p><strong>(1)</strong> On the <strong>Sidebar</strong>, click on <strong>Services</strong>.</p>

<p><img src="images/integration_1-1.png" alt="" /></p>

<p><strong>(2)</strong> Select an existing Service or <strong>Add service</strong></p>

<p><img src="images/integration_1-2.png" alt="" /></p>

<p><strong>(3)</strong> Click the corresponding <strong>Alert Sources</strong></p>

<p><img src="images/integration_1.png" alt="" /></p>

<p><strong>(4)</strong> Search for <strong>Logz.io</strong> from  the <strong>Alert Source</strong> drop down menu and copy the webhook</p>

<p><img src="images/logzio_1.png" alt="" /></p>

<h3 id="in-logzio-create-a-squadcast-webhook-alert">In Logz.io: Create a Squadcast webhook alert</h3>

<p><strong>(1)</strong> In the app, go to <strong>Alerts &amp; Events &gt; Notification endpoints</strong> to create the webhook</p>

<p><img src="images/logzio_2.png" alt="" /></p>

<p><strong>(2)</strong> Click on <strong>Add endpoint</strong></p>

<p><img src="images/logzio_3.png" alt="" /></p>

<p><strong>(3)</strong> Fill in the form as shown below:</p>

<ul>
  <li><strong>Type</strong>: Custom</li>
  <li><strong>Name</strong>: Squadcast Webhook</li>
  <li><strong>Description</strong> (optional)</li>
  <li><strong>URL</strong>: Paste the URL endpoint that was copied from Squadcast Service for Logz.io</li>
  <li><strong>Method</strong>: POST</li>
  <li>Run the test to see if you received a test alert in Squadcast</li>
  <li>Click on <strong>Save</strong></li>
</ul>

<p>Find more details on how each of these parameters can be configured <a href="https://docs.logz.io/user-guide/integrations/custom-endpoints.html">here</a></p>

<p><img src="images/logzio_4.png" alt="" /></p>

<p><strong>(4)</strong> Next, to create the alert itself, you can either:</p>

<ul>
  <li>Go to <strong>Alerts &amp; Events &gt; New Alert</strong> or,</li>
  <li>Click on <strong>Create Alert</strong> from the <strong>Kibana dashboard</strong></li>
</ul>

<p><img src="images/logzio_5.png" alt="" /></p>

<p>Find more details on how each of these parameters can be configured <a href="https://docs.logz.io/user-guide/alerts/configure-an-alert.html">here</a></p>

<p><strong>(5)</strong> Give the alert a <strong>title</strong></p>

<p>Now, you will have to fill out the 3 sections:</p>

<p>(a) <strong>Search for…</strong> section:</p>

<ul>
  <li>Either enter your <strong>Search</strong> query or verify that the query present is correct</li>
  <li>Choose to <strong>Group By</strong> certain fields</li>
  <li>Select <strong>Accounts to Search</strong></li>
  <li>Choose to repeat this (by adding another query), join the queries, etc.</li>
</ul>

<p><img src="images/logzio_6.png" alt="" /></p>

<p><strong>(5)</strong> (b) <strong>Trigger if…</strong> section:</p>

<ul>
  <li>Add <strong>Trigger conditions</strong> for the alert and add one or more thresholds for the trigger</li>
</ul>

<p><img src="images/logzio_7.png" alt="" /></p>

<p><strong>(5)</strong> (c) <strong>Notify</strong> section:</p>

<ul>
  <li>Add a <strong>Description</strong> for the alert (which will be visible for these incidents in Squadcast)</li>
  <li>Associate <strong>Tags</strong> (if any)</li>
  <li><strong>Who to send it to</strong> -&gt; choose <strong>Squadcast Webhook</strong></li>
  <li>Choose a <strong>wait time</strong> between notifications as needed</li>
  <li><strong>Output format</strong> -&gt; choose <strong>JSON</strong></li>
  <li>You can choose to either send <strong>all log fields</strong> or <strong>custom fields</strong></li>
</ul>

<p><img src="images/logzio_8.png" alt="" /></p>

<p><strong>(6)</strong> Click on <strong>Save</strong></p>

<p><img src="images/logzio_9.png" alt="" /></p>

<p>That is it, you are now good to go! Whenever a log alert is triggered in Logz.io, an incident will be created automatically in Squadcast.</p>

<div class="alert alert-info" role="alert"><i class="fa fa-info-circle"></i>
<b>FAQ:</b>
<br /><br /><p>Q: If an alert gets resolved in Logz.io, does Logz.io send auto-resolve signals to Squadcast?<br /><br />A: No, Logz.io does not send auto-resolve signals to Squadcast. Hence, Squadcast incidents from Logz.io should be resolved manually.</p>
</div>


                <div class="tags">
                    
                    <h2>Related Documents </h2>
                    
                    
                    
                    
                    <a href="Logstash.html" class="btn btn-default navbar-btn cursorNorm" role="button"style="min-width: 120px; height: 120px; text-align: left; margin-right: 20px; font-weight: 600;">Logstash<br/><ul style="padding-left: 20px;"><li>----</li><li>----</li><li>----</li></ul></a>
                    
                    
                    
                    
                    <a href="ManageEngine-Opmanager.html" class="btn btn-default navbar-btn cursorNorm" role="button"style="min-width: 120px; height: 120px; text-align: left; margin-right: 20px; font-weight: 600;">ManageEngine Opmanager<br/><ul style="padding-left: 20px;"><li>----</li><li>----</li><li>----</li></ul></a>
                    
                    
                    
                </div>

            

    </div>
    <div class="col-md-4">
        
        
<!-- this handles the automatic toc. use ## for subheads to auto-generate the on-page minitoc. if you use html tags, you must supply an ID for the heading element in order for it to appear in the minitoc. -->
<script>
$( document ).ready(function() {
  // Handler for .ready() called.

$('#toc').toc({ minimumHeaders: 0, listType: 'ul', showSpeed: 0, headers: 'h2,h3,h4' });

/* this offset helps account for the space taken up by the floating toolbar. */
$('#toc').on('click', 'a', function() {
  var target = $(this.getAttribute('href'))
    , scroll_target = target.offset().top

  $(window).scrollTop(scroll_target - 10);
  return false
})
  
});
</script>

<div id="toc" style="margin-top: 30px;"></div>

        
    </div>
</div>
<script>
    if (window.innerWidth>1024){
        window.addEventListener('scroll', function(){
            if (window.scrollY>=73){
                if (document.getElementById('toc').offsetHeight > 650){
                    document.getElementById('toc').setAttribute('style', 'position: relative');
                }else{
                    document.getElementById('toc').setAttribute('style', 'position: fixed; top: 9%; margin-top: 20px;'); /*previously, top: 0*/
                }
            }else{
                if (document.getElementById('toc').offsetHeight > 650){
                    document.getElementById('toc').setAttribute('style', 'position: relative');
                }else{
                    document.getElementById('toc').setAttribute('style', 'margin-top: 20px; position: fixed;');
                }
            }
        }); 
    }
</script>

<script>
    if(window.location.href.slice(-27) == 'manageengine-opmanager.html'){
        var lin = document.getElementsByClassName('cursorNorm')[1].href;
        lin = lin.slice(0,-34)+'MongoDB-Atlas-Cloud-Manager.html';
        document.getElementsByClassName('cursorNorm')[1].href = lin;
    }
</script>

<hr class="shaded"/>

<footer>
            <div class="row">
                <div class="col-lg-12 footer">
                    <p><img src="images/company_logo.png" alt="Company logo"/></p>
               Copyright &copy; Squadcast Inc. 2017 - 2021<br/> All rights reserved <br />
<!--  Site last generated: Jan 21, 2021 <br /> -->
                </div>
            </div>
            <script>
                window.intercomSettings = {
                    app_id: "lqtvxnd7",
                    custom_launcher_selector: "#support"
                };
            </script>
            <script>(function(){var w=window;var ic=w.Intercom;if(typeof ic==="function"){ic('reattach_activator');ic('update',w.intercomSettings);}else{var d=document;var i=function(){i.c(arguments);};i.q=[];i.c=function(args){i.q.push(args);};w.Intercom=i;var l=function(){var s=d.createElement('script');s.type='text/javascript';s.async=true;s.src='https://widget.intercom.io/widget/lqtvxnd7';var x=d.getElementsByTagName('script')[0];x.parentNode.insertBefore(s,x);};if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}}})();</script>
</footer>


        </div>
    <!-- /.row -->
</div>
<!-- /.container -->
</div>
<!-- /#main -->
    </div>

</body>

</html>