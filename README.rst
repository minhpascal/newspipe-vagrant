====
JARR
====


Presentation
============

`JARR (Just Another RSS Reader) <https://github.com/JARR/JARR>`_
is a web-based news aggregator and reader.


Deploy JARR with Vagrant
========================

Installation of VirtualBox and Vagrant
--------------------------------------

.. code-block:: bash

    $ sudo apt-get install virtualbox
    $ wget https://releases.hashicorp.com/vagrant/1.8.5/vagrant_1.8.5_x86_64.deb
    $ sudo dpkg -i vagrant_1.8.5_x86_64.deb

Deployment of JARR
------------------

.. code-block:: bash

    $ git clone https://github.com/JARR/JARR-vagrant.git
    $ cd JARR-vagrant/
    $ vagrant up

Once the VM will be configured by Vagrant,
go to the address http://127.0.0.1:5000.


License
=======

`JARR <https://github.com/JARR/JARR>`_ is under the
`GNU Affero General Public License version 3 <https://www.gnu.org/licenses/agpl-3.0.html>`_.


Contact
=======

`Cédric Bonhomme <https://www.cedricbonhomme.org>`_
