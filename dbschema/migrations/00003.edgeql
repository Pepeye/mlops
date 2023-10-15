CREATE MIGRATION m1bmxkikhhbgwi4j54eejlgtwpx4e2qyjqvc57lhqndhp2cvj44wpq
    ONTO m1qhdssephncqpzqol3rrfohg5gh5sz7rmkr37kx3w3d6rqof3lhpa
{
  CREATE TYPE default::Identity EXTENDING default::Timestamp {
      CREATE REQUIRED PROPERTY email: std::str;
      CREATE CONSTRAINT std::exclusive ON (.email);
      CREATE PROPERTY login: std::str;
      CREATE INDEX ON (.login);
      CREATE INDEX ON (.email);
      CREATE PROPERTY password: std::str;
      CREATE REQUIRED PROPERTY preferred: std::bool {
          SET default := false;
      };
  };
  CREATE TYPE default::Person EXTENDING default::Timestamp {
      CREATE MULTI LINK identity: default::Identity;
      CREATE REQUIRED PROPERTY firstname: std::str;
      CREATE REQUIRED PROPERTY lastname: std::str;
      CREATE PROPERTY fullname := (((.firstname ++ ' ') ++ .lastname));
      CREATE INDEX ON (.fullname);
      CREATE PROPERTY nickname: std::str;
      CREATE REQUIRED PROPERTY status: default::Status {
          SET default := (default::Status.PENDING);
      };
  };
};
