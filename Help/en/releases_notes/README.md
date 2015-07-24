# Architecture and development cycles

Isogeo is a SaaS (Software as a Service) platform, which means greater flexibility in terms of its installation and use. Its development adheres to agile methodology and scrum methodology cycles.

As shown in the diagram below, Isogeo has two main components:

* A "tool" website: a working environment hosted by Isogeo.

* An agent: a Windows service deployed on a server or workstation within the client organization.

![Isogeo architecture](/en/images/architecture_Isogeo.png "General diagram of the Isogeo platform architecture")

## Installing and managing environments

Isogeo uses the SaaS model Microsoft's Windows Azure *cloud computing* platform. Three distinct environments are used to manage development, testing and production:

* The **development** platform, reserved for Isogeo, used to manage development for the solution. Updated every night, this platform compiles all development from the previous day (see below for Isogeo's software quality process);

* The **acceptance-testing** platform, also reserved for Isogeo, used to manage solution testing before release. New versions are delivered to the test platform every two weeks. Once validated, this new version can be released; any bugs detected are added to the Redmine tracking tool;

* The **production** platform, accessible by all users, used to manage training and production. New versions may be delivered to the production platform every two weeks. When development only affects the "tool" website, the executable installed by the client does not need to be updated. When development affects the executable, a manual update may need to be performed by the client. The client organization is notified beforehand of the schedule, executable, and upgrade procedure.

Solution users have access to the same production environment.

## Hardware resources for the service

Hardware requirements depend on the type and volume of data processed by the agent within the information system. Generally speaking, you should refer to the hardware requirements of FME Desktop 2013.

Depending on the characteristics of the data browsed, processing can become RAM intensive (signing vector datasets as multi-geometry elements, very heavy rasters, etc.). A single-core processor and adequate RAM are required to correspond to the maximum size of the available data.

## Backup and recovery

The Isogeo platform (application and database) is backed up daily to a private storage location on Microsoft©'s Windows Azure© cloud computing platform. The backup resources are described on the official [Microsoft©](http://www.windowsazure.com/en-us) site .

A general recovery of the platform can be performed by Isogeo.

The recovery of the environment specific to the organization can be performed by that organization.

### Availability rate

Isogeo deploys the resources needed to ensure maximum availability (close to 24/7) and to make data accessible at all times. Details of the resources deployed can be found on the Microsoft© Windows Azure© site: http://azure.microsoft.com/en-us/support/faq/

Given the state of the art, Isogeo cannot guarantee the service's fault-free, uninterrupted operation. However, Isogeo aims to ensure an availability rate in accordance with the following table:

| Service            | Availability | Unavailability/year        | Unavailability/quarter |
| :----------------- | :-----------: | :-------------------------: | :-------------------------: |
| Microsoft Azure    | 99.95%        | 4.5 hrs.                        | 1.12 hrs.                       |
| Isogeo deployment | 99.45%        | 48 hrs. (24 2-hour deployments) | 12hrs.                         |
| Isogeo unforeseen   | 99.60%        | 35 hrs.                         | 8.75 hrs.                       |

The service's overall availability rate is currently 99%.

Organizations are notified beforehand of all unscheduled maintenance operations at least one day in advance.

Maintenance operations are scheduled for updating the "tool" website and updating the executable installed by the organization.

The "tool" site update is invisible to the solution's users. It does not require any action by the organization.

Only executable updates may require action by the organization. Isogeo sends an e-mail one week prior to the scheduled maintenance operation if any manual intervention will be required.

## Security

### Securing access and transmissions

* The Isogeo service (client component) communicates with the Isogeo platform during certain administrative operations (geographic data scans and synchronizations). Authentication is ensured using identifiers; communication between the agent and the platform is encrypted (SSL).

* Communication between the agent and the platform is initiated by the agent. There is no need to open any specific incoming ports.

* However, incoming and outgoing communications must be authorized for TCP port 5671.

### Controlling access to the data during automatic inventorization

* The data is accessed via the [FME](http://www.safe.com/fme/fme-technology/fme-desktop/overview/) tool 

* This data access is entirely configurable by the organization, which can specify which databases and directories can be accessed by the executable.

* Data access depends on the type of data storage:
    * Database Management System (DBMS): all operating systems.
    * Files: you must be able to provide the service with a Windows share (SMB protocol). In addition, it is best if the files are hosted on a server-type OS.

* Access to data is read-only; however certain data access providers require read/write access. Geographic data is not modified, however, index files or technical information files may require write access.

* While the agent does not store any information itself, it may need to generate potentially large temporary files which it deletes automatically.

## Software Quality Assurance

> Tip: read the [full article](http://blog.isogeo.com/software-quality-assurance-the-road-to-zero-defects) written by our CTO.

[Continuous Integration](http://www.martinfowler.com/articles/continuousIntegration.html) has been in place in Isogeo for more than two years now, which has been an excellent way to release fairly consistent versions of our backend components (our API for the main part) over time. Our main achievement in 2014 in this domain was to be able to integrate our frontend components (our main application) in the same process.

This was a bit challenging because of technology differences (Javascript vs .NET) but we are pretty pleased by the results.

Our goal in 2015 is to go further down that road and improve our[ Deployment Pipeline](http://martinfowler.com/bliki/DeploymentPipeline.html) to ensure an overall better quality and a better availability of our platform. We want to be able to test more, more consistently and get us closer to a [Continuous Delivery](http://martinfowler.com/bliki/ContinuousDelivery.html) platform.

### State of the process

Obviously (?) the first and most important part of a Continous Integration is the Revision Control component: all our projects are checked in in as many hosted [Git](http://www.git-scm.com/) repositories.

Every repository is monitored by a build server that is in charge of ensuring that the developers commit consistent code (Continuous Build) and that creates complete deployable packages every night (Nightly Build).

### Continuous Build

The Continuous Build checks that, for every commit:

* the source code is consistent, ie does not break the build. This ensures that other developers can retrieve these changes locally and still be able to compile the projects.

* the resulting software meets our most basic quality criteria:
    * it must pass all of our [unit tests](http://www.extremeprogramming.org/rules/unittests.html).
    * it must adhere to our internal guidelines, which are enforced by a set of dedicated tools ([FxCop](https://msdn.microsoft.com/en-us/library/bb429476%28v=vs.80%29.aspx) or [JSHint](http://jshint.com/)).

Every developer must monitor the state of the build at all times, and a broken build must be fixed immediately.

![Continuous Build](/en/images/architecture_ContinuousBuild.png "Continuous build process")

The build server configuration can be kept fairly simply simple thanks to the use of:

* conventions that define the way projects are organized (certain folders of files are here for certain purposes). This is also very important for developers, who can jump from one project another and quickly understand where everything is.

* package managers that handle dependencies in a simple way ([NuGet](http://www.nuget.org/) or [npm](https://www.npmjs.com/)). One of these dependencies is a set of build scripts that work on every project that adheres to the aforementionned conventions. You can find [the source code for these scripts on GitHub](https://github.com/isogeo/Isogeo.Build).

### Nightly Build

The Nightly Build is basically an extension of the previous build. It is triggered every night and it does everything the Continuous Build does and:

* it creates a deployable package for the project, deployable meaning that we will ultimately be able to deploy it on all our platforms (we currently have Integration, QualityAssurance and Production) with only a reconfiguration. The technology we use to create such packages is [Microsoft Web Deploy](http://www.iis.net/downloads/microsoft/web-deploy) which is very suited to the task.

* it automatically deploys the package on our Integration platform. This platform is self-hosted inside Isogeo and can be used by developers and testers alike to ensure that all the components put together still form a coherent platform.

We also have a QualityAssurance platform that is hosted on Windows Azure (as is our Production platform). It is used to test the platform in a realistic environment before the release of a new version, every three months.

Most of our components can be deployed on Windows Azure using the same Web Deploy technology, but our API requires to be packaged in a [specific Azure package format](https://msdn.microsoft.com/en-us/library/azure/gg433055.aspx). We use another set of scripts to manually create such packages from the build server packages.

![Nighlty build](/en/images/architecture_NightlyBuild.png "The nightly build process")

The tests that are carried out on these platforms are manual at the moment.

Once deployed our platforms are monitored:

* by the basic [Azure alerts and notifications mechanism](https://msdn.microsoft.com/en-us/library/azure/dn306639.aspx).
* by the platform provided by [New Relic](http://newrelic.com/).
