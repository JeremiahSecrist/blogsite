---
publishDate: 2023-07-04T01:53:58.463Z
title: "Work In Progress: Full-stack Nix Deployment"
excerpt: Under Construction
image: /src/assets/images/colors.jpg
tags:
  - Tech
  - NixOS
  - Software
  - Development
  - IaC
  - Linux
  - Terraform
  - DevOps
---
#﻿ Under Construction
P﻿lease note I am still in the process of writing this, thank you for your understanding.
-﻿--

I﻿ am writing this to document my progress on a personal project I've wanted to do for some time. This idea has resulted from seeing many bits and pieces of such a tool on the internet, but never fully put together in a cohesive fashion. To be more specific, I have not seen a full DevOps / GitOps centered  solution that actually puts all the needed components in one location. Nor Have I seen them attempt to mitigate the risk of becoming dependent on any one system. I wanted a Mono-Repo to demo all aspects of SDL (Software Defined Lifecycle). 

### C﻿onstraints:

W﻿hen building out this codebase, I wanted to avoid many pitfalls in its creation that I see in other projects. 

1. D﻿ependency on company provided solutions. This is not to say that one can not use them, but if the solution vendor locks me in a way that I can not easily migrate in the future, then I won't use it for this project. Companies are known to change their pricing and licensing on a whim, as such I've limited to only using the free / open source tires that companies offer.
2. D﻿eclarative centric design. As I went for nix to be the glue that ties all my choices together, I wanted the tools used with it to be center around the same concept as nix itself.
3. Secret Management, this project must include a proper method to handle secrets within its inception. It should be an afterthought.
4. P﻿roper automate backups, This project's deployments should have mandatory backups configured by default. The defaults should be easily configurable and adjustable for special situations. 
5. E﻿nable easy unit testing, Upon deployment of a configuration It should automatically test the options are valid and enable the user to expand on it more. 
6. C﻿I - CD Independent, It should be easy to retro fit to any deployment method, thankfully this is easily enabled by the heavy use of nix.