# Architecture and development cycles

Isogeo is a SaaS (Software as a Service) platform, which means greater flexibility in terms of its installation and use. Its development adheres to agile methodology and scrum methodology cycles.

As shown in the diagram below, Isogeo has two main components:

* A "tool" website: a working environment hosted by Isogeo.

* An agent: a Windows service deployed on a server or workstation within the client organization.

![Isogeo architecture](/en/images/architecture_Isogeo.png "General diagram of the Isogeo platform architecture")

## Installing and managing environments

Isogeo uses the SaaS model Microsoft's Windows Azure *cloud computing*  platform. Three distinct environments are used to manage development, testing and production:

* The **development** platform, reserved for Isogeo, used to manage development for the solution. Updated every night, this platform compiles all development from the previous day (see below for Isogeo's software quality process);

* The **acceptance-testing** platform, also reserved for Isogeo, used to manage solution testing before release. New versions are delivered to the test platform every two weeks. Once validated, this new version can be released; any bugs detected are added to the Redmine tracking tool;

* The **production** platform, accessible by all users, used to manage training and production. New versions may be delivered to the production platform every two weeks. When development only affects the "tool" website, the executable installed by the client does not need to be updated. When development affects the executable, a manual update may need to be performed by the client. The client organization is notified beforehand of the schedule, executable, and upgrade procedure.

Solution users have access to the same production environment.

## Hardware resources for the service

Hardware requirements depend on the type and volume of data processed by the agent within the information system. Generally speaking, you should refer to the hardware requirements of FME Desktop 2013.

Depending on the characteristics of the data browsed, processing can become RAM intensive (signing vector datasets as multi-geometry elements, very heavy rasters, etc.). A single-core processor and adequate RAM are required to correspond to the maximum size of the available data.

## Backup and recovery

The Isogeo platform (application and database) is backed up daily to a private storage location on Microsoft©'s Windows Azure© cloud computing  platform. The backup resources are described on the official [Microsoft Azure©] site (http://www.windowsazure.com/en-us).

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

### Controlling access to the data during  automatic inventorization

* The data is accessed via the [FME] tool (http://www.safe.com/fme/fme-technology/fme-desktop/overview/)

* This data access is entirely configurable by the organization, which can specify which databases and directories can be accessed by the executable.

* Data access depends on the type of data storage:
    * Database Management System (DBMS): all operating systems.
    * Files: you must be able to provide the service with a Windows share (SMB protocol). In addition, it is best if the files are hosted on a server-type OS.

* Access to data is read-only; however certain data access providers require read/write access. Geographic data is not modified, however, index files or technical information files may require write access.

* While the agent does not store any information itself, it may need to generate potentially large temporary files which it deletes automatically.
