class HomeController < ApplicationController
  def index
  end
  def projects
    @projs = [
      { name: "Bro", description: 
        "I am currently working on ARP spoofing detection using [bro], a powerful network traffic analysis tool.
[bro]: http://www.bro-ids.org/", pic: "bro.png"},
      { name: "MERmaid", description: 
        "I have recently begun contributing to [MERmaid], a distributed *de novo* genome assembler.
[MERmaid]: https://github.com/mermaid-assembler", pic: "mermaid.png"}
    ]
    @pasts = [
      { name: "PHELONY", description: 
        "In the Spring 2012 semester I took [CS194-22]: Cell Phones as a Computing Platform. Our team contributed to the [OsmocomBB] project, an open source GSM Baseband software implementation.
[CS194-22]: http://phone.cs.berkeley.edu/dokuwiki/doku.php?id=194-22:sp2012
[OsmocomBB]: http://bb.osmocom.org/", pic: "osmocom.png"}
    ]
  end

  def teaching
    @klasses = [
      { name: "CS161: Computer Security", description:
        "I joined the staff of UC Berkeley's CS161 (link) in the Spring 2012 semester."},
      { name: "CS169: Software Engineering", description: 
        "I joined the staff UC Berkeley's CS169 (link) in the Spring 2012 semester."}
    ]
  end

  def misc
    @miscs = [
      { name: "Machine shop", description: "I worked in the CED fabrication shop (link) for two years"},
      { name: "Music", description: "I enjoy playing and composing music. Here are some selected pieces: (link)"}
    ]
  end
end
