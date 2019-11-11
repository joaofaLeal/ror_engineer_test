# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

    - 2.3.4
    
* System dependencies

    - Postgres 9.6 (Recommended)

* RPM file
    
    - Generate RPM file
    
        ```text
        sh build/build_rpm.sh
        ```        
    - Install RPM file
    
        ```text
        sudo yum install build/rpmbuild/RPMS/x86_64/*.rpm
        ```

* Database creation

    - Create a role test-data-mgmt on database
    
    ```text
    su - postgres
    psql
    create role test_data_mgmt with createdb login password 'test_data_mgmt';
    ```

* Application commands

    - Start
    
        ```text
        sudo service test-data-mgmt start
        ```
    - Stop
    
        ```text
        sudo service test-data-mgmt stop
        ```

### FIXME

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
