CREATE MIGRATION m1qhdssephncqpzqol3rrfohg5gh5sz7rmkr37kx3w3d6rqof3lhpa
    ONTO m12z7vvb6pjurg5tkv6jrn3doqugvn5whha2svnozs7abm4vtv4lya
{
  CREATE SCALAR TYPE default::Status EXTENDING enum<ACTIVE, PENDING, INACTIVE, BLOCKED>;
};
