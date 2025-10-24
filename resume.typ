#set page(paper: "us-letter", margin: (left: 1.0in, right: 1in, top: 0.6in, bottom: 0.6in))
#set par(justify: true)
#set text(lang: "en", hyphenate: true)

// Header
#align(center)[
  #text(size: 16pt, weight: "bold")[ASHLEY PENNEY] \
  Lake Jackson, TX \
  (978) 489-4019 – #link("mailto:apenney@untaken.net")[apenney\@untaken.net]
]

*EXPERIENCE*
#v(-4pt)
#line(length: 100%, stroke: 0.5pt) // thinner separator

// A helper to render one role
// Horizontal row: left on the left, right flush-right
#let row(left, right) = box(width: 100%)[
  #left #h(1fr) #right
]

// One role
#let job(company, dates, title, location, body) = [
  // Row 1: company • dates
  #row(
    text(weight: "bold")[#company],
    text()[#dates],
  )
#v(-4pt)
  // Row 2: title • location (both italic)
  #row(
    text(style: "italic")[#title],
    text(style: "italic")[#location],
  )

  // Body: small left indent + justified paragraph
  #pad(left: 0.8em)[
    #set par(justify: true)
    #body
  ]

  #v(8pt)
]


// --- ENTRIES ---
// IMPORTANT: keep each description as a single paragraph (remove mid-line breaks)

// Tesorio
#job(
  "Tesorio", "Apr 2024 – Present",
  "Head of Devops", "Remote",
  [
    I led a team of 3 DevOps engineers through a complete infrastructure transformation. We replaced our legacy deployment system with ArgoCD/Kargo, dramatically reducing deployment time from 2 weeks to under 1 hour, and modernized our Kubernetes infrastructure to enable autoscaling. Through centralized Terraform management and relentless performance optimizations, we achieved a 30% cost reduction while maintaining 99.9% uptime. Our deployment frequency increased 10x as a result of these improvements. As both team lead and hands-on contributor, I coached my engineers while personally delivering critical components, partnering directly with the CTO to design and execute our technical strategy.
  ]
)

// Monad
#job(
  "Monad", "May 2023 – Apr 2024",
  "Head of Infrastructure", "Remote",
  [
    Joined Monad (former Release customer) to architect enterprise-ready private cloud infrastructure. Working with one other engineer, I redesigned our Terraform provisioning to support fully isolated, private cloud environments and implemented a comprehensive observability stack meeting enterprise SLA requirements. We optimized CI/CD pipelines, reducing release cycles by 60%, and deployed new infrastructure components including Spark clusters capable of processing millions of events daily, reducing processing time from days to minutes. Together we built the foundation for a complete private cloud offering.
  ]
)

// Anomalo
#job(
  "Anomalo", "March 2023 – May 2023",
  "Senior Software Engineer (Infrastructure Focus)", "Remote",
  [
    Recruited by my former VP of Engineering from Beeswax to lead a critical infrastructure scaling initiative at Anomalo. In this focused engagement, I implemented Datadog observability across their data quality platform, redesigned their build system to reduce build times by 40%, and modernized CI/CD pipelines to support rapid growth. I also partnered with the development team to streamline local development environments, significantly improving developer productivity. The role concluded when organizational priorities shifted following leadership changes.
  ]
)

// Release
#job(
  "Release", "October 2021 – March 2023",
  "Founding Engineer", "Remote",
  [
    As Release’s first customer turned founding team member, I leveraged my user experience to shape both product strategy and go-to-market execution. I established three critical functions from scratch: integration engineering, customer success, and technical onboarding. My responsibilities spanned the entire business—from closing enterprise deals on sales calls to architecting solutions for complex customer requirements. On the technical side, I managed production infrastructure for 20+ customer Kubernetes clusters, contributed core platform features, and built the playbooks that enabled our team to scale from 5 to 20+ enterprise customers. This unique blend of customer-facing and technical leadership helped validate product–market fit and establish repeatable growth patterns.
  ]
)

// Beeswax (Now Comcast)
#job(
  "Beeswax (Now Comcast)", "August 2020 – October 2021",
  "Director of SRE", "Remote",
  [
    Led the SRE team supporting a 5M QPS ad-tech platform. Personally architected a load-balancer redesign that achieved a 10× performance improvement while reducing infrastructure from dozens of instances to 8, eliminating chronic outages. Managed the migration of 4,500+ pods to Kubernetes with ArgoCD automation, upgraded 20 Aerospike clusters for optimal performance, and replaced a homegrown observability stack with Grafana Cloud for better scalability and lower cost. Delivered 100% of engineering commitments on schedule through improved planning and execution.
  ]
)

// Simon Data
#job(
  "Simon Data", "April 2019 – August 2020",
  "Head Of Devops", "Remote",
  [
    Founded and led the DevOps team. Focused on modernizing the developer tooling experience: introduced modern observability tools, reworked the CI/CD pipeline, migrated services to Docker, and resolved years of tech debt. Though the team was just two engineers, our work had a massive positive impact on developer productivity and deployment reliability.
  ]
)

// Everquote
#job(
  "Everquote", "June 2018 – April 2019",
  "VP of Infrastructure", "Cambridge, MA",
  [
    Transformed a legacy ops team into a modern SRE organization supporting 150+ microservices. Built a self-service platform enabling engineering teams to deploy and operate services independently. Reduced infrastructure spend by 35% while simultaneously improving reliability.
  ]
)

// Cota Healthcare
#job(
  "Cota Healthcare", "December 2017 – June 2018",
  "VP of Infrastructure", "New York, NY",
  [
    Led a cloud migration and Kubernetes deployment for a healthcare big-data platform analyzing cancer datasets. These efforts improved deployment velocity by 10× and set the stage for scalable growth.
  ]
)

// Maxwell Health
#job(
  "Maxwell Health", "July 2016 – December 2017",
  "Director of Infrastructure", "Boston, MA",
  [
    Turned around a failing operations team. Reduced server provisioning time from 6 weeks to instant self-service by implementing Kubernetes. Also achieved SOC2/HIPAA compliance during this period.
  ]
)

// nToggle
#job(
  "nToggle", "January 2015 – July 2016",
  "Techops Manager", "Boston, MA",
  [
    Designed an anycast-backed, load balancer–less datacenter architecture for a low-latency ad-tech platform. Managed infrastructure solutions that delivered 40% cost savings to customers through optimized resource utilization.
  ]
)


