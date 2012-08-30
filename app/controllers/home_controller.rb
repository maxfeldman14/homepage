class HomeController < ApplicationController
  def index
  end
  def projects
    @projs = [
      { name: "Bro", description: 
        "I am currently working on ARP spoofing detection using [bro], a powerful network traffic analysis tool.

[github]
[bro]: http://www.bro-ids.org/
[github]: https://github.com/maxfeldman14/brospects", pic: "bro.png"},
      { name: "MERmaid", description: 
        "I have recently begun contributing to [MERmaid], a distributed *de novo* genome assembler.
[MERmaid]: https://github.com/mermaid-assembler", pic: "mermaid.png"},
      { name: "HKN Website", description:
        "I occasionally contribute to UC Berkeley's HKN (Mu chapter) [website].
[website]: https://hkn.eecs.berkeley.edu"}
    ]
    @pasts = [
      { name: "PHELONY", description: 
        "In the Spring 2012 semester I took [CS194-22]: Cell Phones as a Computing Platform. Our team contributed to the [OsmocomBB] project, an open source GSM Baseband software implementation.

[github]
[CS194-22]: http://phone.cs.berkeley.edu/dokuwiki/doku.php?id=194-22:sp2012
[OsmocomBB]: http://bb.osmocom.org/
[github]: https://github.com/maxfeldman14/PHELONY", pic: "osmocom.png"}
    ]
  end

  def work 
    @works = [
      { name: "CS161: Computer Security", description:
        "I joined the staff of UC Berkeley's [CS161] in the Spring 2012 semester.
[CS161]: http://www.cs.berkeley.edu/~dawnsong/teaching/f12-cs161"},
      { name: "CS169: Software Engineering", description: 
        "I joined the staff of UC Berkeley's [CS169]  in the Spring 2012 semester.
[CS169]: https://sites.google.com/site/ucbsaas"},
      { name: "Salesforce", description:
        "I've spent the past two summers working at [Salesforce.com], and am continuing to work there part time.
[Salesforce.com]: https://www.salesforce.com"}
    ]
  end

  def misc
    @miscs = [
      { name: "Machine shop", description: "I worked in the [CED fabrication shop] for two years
[CED fabrication shop]: http://www.ced.berkeley.edu/college/facilities/shop"},
      { name: "Music", description: "I enjoy playing and composing music. I'll be uploading some songs soon."}
    ]
  end
end
